PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["SearchCreatorInventory"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 CALL                             R5 5 -1
        9 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetGroups"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["PostAsyncFullUrl"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R4 K2 [{"toolArgs", "handlerArgs"}]
        1 SETTABLEKS                       R0 R4 K0 ["toolArgs"]
        3 GETTABLEKS                       R5 R1 K1 ["handlerArgs"]
        5 SETTABLEKS                       R5 R4 K1 ["handlerArgs"]
        7 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createFreshGuestContext"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 LOADNIL                          R7
        6 MOVE                             R8 R1
        7 MOVE                             R9 R2
        8 MOVE                             R10 R3
        9 CALL                             R4 6 -1
       10 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWidgetUpdateFunctions"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AssetSearchTool"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toolArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        5 GETTABLEKS                       R1 R1 K2 ["sendMessage"]
        7 GETTABLEKS                       R2 R0 K3 ["isFree"]
        9 JUMPIFEQKB                       R2 FALSE ; [+22]
       11 JUMPIFNOT                        R1 ; [+46]
       12 MOVE                             R2 R1
       13 DUPTABLE                         R3 K6 [{"text", "hidden"}]
       14 LOADK                            R5 K7 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       15 GETTABLEKS                       R7 R0 K8 ["assetId"]
       17 GETTABLEKS                       R8 R0 K9 ["name"]
       19 GETTABLEKS                       R9 R0 K10 ["assetType"]
       21 NAMECALL                         R5 R5 K11 ["format"]
       23 CALL                             R5 4 1
       24 MOVE                             R4 R5
       25 SETTABLEKS                       R4 R3 K4 ["text"]
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K5 ["hidden"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K0 ["toolArgs"]
       35 GETTABLEKS                       R2 R2 K12 ["environment"]
       37 JUMPIFNOT                        R2 ; [+20]
       38 GETTABLEKS                       R3 R2 K13 ["http"]
       40 JUMPIFNOT                        R3 ; [+17]
       41 GETTABLEKS                       R3 R2 K13 ["http"]
       43 GETTABLEKS                       R3 R3 K14 ["openUrl"]
       45 JUMPIFNOT                        R3 ; [+12]
       46 GETTABLEKS                       R3 R2 K13 ["http"]
       48 GETTABLEKS                       R3 R3 K14 ["openUrl"]
       50 LOADK                            R5 K15 ["https://create.roblox.com/store/asset/%*"]
       51 GETTABLEKS                       R7 R0 K8 ["assetId"]
       53 NAMECALL                         R5 R5 K11 ["format"]
       55 CALL                             R5 2 1
       56 MOVE                             R4 R5
       57 CALL                             R3 1 0
       58 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R8 K1 [game]
        2 GETTABLEKS                       R8 R8 K2 ["GameId"]
        4 FASTCALL1                        TOSTRING R8 ; [+2]
        5 GETIMPORT                        R7 K4 [tostring]
        7 CALL                             R7 1 1
        8 MOVE                             R2 R7
        9 LOADK                            R3 K5 [":"]
       10 GETIMPORT                        R8 K1 [game]
       12 GETTABLEKS                       R8 R8 K6 ["CreatorId"]
       14 FASTCALL1                        TOSTRING R8 ; [+2]
       15 GETIMPORT                        R7 K4 [tostring]
       17 CALL                             R7 1 1
       18 MOVE                             R4 R7
       19 LOADK                            R5 K5 [":"]
       20 GETIMPORT                        R7 K1 [game]
       22 GETTABLEKS                       R7 R7 K7 ["CreatorType"]
       24 FASTCALL1                        TOSTRING R7 ; [+2]
       25 GETIMPORT                        R6 K4 [tostring]
       27 CALL                             R6 1 1
       28 CONCAT                           R1 R2 R6
       29 GETUPVAL                         R2 0
       30 JUMPIFNOT                        R2 ; [+17]
       31 GETUPVAL                         R2 1
       32 JUMPIFNOTEQ                      R2 R1 ; [+15]
       34 GETUPVAL                         R2 2
       35 LOADK                            R4 K8 ["[AssetSearchTool] discoverContext: returning cached context: %*"]
       36 GETUPVAL                         R6 3
       37 GETUPVAL                         R8 0
       38 NAMECALL                         R6 R6 K9 ["JSONEncode"]
       40 CALL                             R6 2 1
       41 NAMECALL                         R4 R4 K10 ["format"]
       43 CALL                             R4 2 1
       44 MOVE                             R3 R4
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 0
       47 RETURN                           R2 1
       48 GETTABLEKS                       R3 R0 K11 ["getUserId"]
       50 CALL                             R3 0 -1
       51 FASTCALL                         TOSTRING ; [+2]
       52 GETIMPORT                        R2 K4 [tostring]
       54 CALL                             R2 -1 1
       55 GETIMPORT                        R3 K1 [game]
       57 GETTABLEKS                       R3 R3 K2 ["GameId"]
       59 GETIMPORT                        R4 K1 [game]
       61 GETTABLEKS                       R4 R4 K7 ["CreatorType"]
       63 GETIMPORT                        R5 K1 [game]
       65 GETTABLEKS                       R5 R5 K6 ["CreatorId"]
       67 GETUPVAL                         R6 2
       68 LOADK                            R8 K12 ["[AssetSearchTool] discoverContext: userId=%*, gameId=%*, creatorType=%*, creatorId=%*"]
       69 MOVE                             R10 R2
       70 MOVE                             R11 R3
       71 FASTCALL1                        TOSTRING R4 ; [+3]
       72 MOVE                             R13 R4
       73 GETIMPORT                        R12 K4 [tostring]
       75 CALL                             R12 1 1
       76 MOVE                             R13 R5
       77 NAMECALL                         R8 R8 K10 ["format"]
       79 CALL                             R8 5 1
       80 MOVE                             R7 R8
       81 CALL                             R6 1 0
       82 DUPTABLE                         R6 K16 [{"userId", "universeId", "groupId"}]
       83 SETTABLEKS                       R2 R6 K13 ["userId"]
       85 LOADN                            R8 0
       86 JUMPIFNOTLT                      R8 R3 ; [+7]
       88 FASTCALL1                        TOSTRING R3 ; [+3]
       89 MOVE                             R8 R3
       90 GETIMPORT                        R7 K4 [tostring]
       92 CALL                             R7 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R7
       95 SETTABLEKS                       R7 R6 K14 ["universeId"]
       97 GETIMPORT                        R8 K19 [Enum.CreatorType.Group]
       99 JUMPIFNOTEQ                      R4 R8 ; [+7]
      101 FASTCALL1                        TOSTRING R5 ; [+3]
      102 MOVE                             R8 R5
      103 GETIMPORT                        R7 K4 [tostring]
      105 CALL                             R7 1 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R7
      108 SETTABLEKS                       R7 R6 K15 ["groupId"]
      110 SETUPVAL                         R1 1
      111 SETUPVAL                         R6 0
      112 GETUPVAL                         R7 2
      113 LOADK                            R9 K20 ["[AssetSearchTool] discoverContext: resolved context: %*"]
      114 GETUPVAL                         R11 3
      115 MOVE                             R13 R6
      116 NAMECALL                         R11 R11 K9 ["JSONEncode"]
      118 CALL                             R11 2 1
      119 NAMECALL                         R9 R9 K10 ["format"]
      121 CALL                             R9 2 1
      122 MOVE                             R8 R9
      123 CALL                             R7 1 0
      124 RETURN                           R6 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fetchUserGroups"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 NAMECALL                         R0 R0 K1 ["makeRequest"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K2 ["expect"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+15]
        7 GETUPVAL                         R3 1
        8 LOADK                            R5 K2 ["[AssetSearchTool] getUserGroups: fetch failed for surface=%*: %*"]
        9 MOVE                             R7 R0
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R9 R2
       12 GETIMPORT                        R8 K4 [tostring]
       14 CALL                             R8 1 1
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 3 1
       18 MOVE                             R4 R5
       19 CALL                             R3 1 0
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 MOVE                             R3 R2
       23 JUMPIFNOT                        R3 ; [+2]
       24 GETTABLEKS                       R3 R2 K6 ["responseBody"]
       26 JUMPIFNOT                        R3 ; [+8]
       27 GETTABLEKS                       R5 R3 K7 ["groups"]
       29 FASTCALL1                        TYPE R5 ; [+2]
       30 GETIMPORT                        R4 K9 [type]
       32 CALL                             R4 1 1
       33 JUMPIFEQKS                       R4 K10 ["table"] ; [+11]
       35 GETUPVAL                         R4 1
       36 LOADK                            R6 K11 ["[AssetSearchTool] getUserGroups: unexpected shape for surface=%*"]
       37 MOVE                             R8 R0
       38 NAMECALL                         R6 R6 K5 ["format"]
       40 CALL                             R6 2 1
       41 MOVE                             R5 R6
       42 CALL                             R4 1 0
       43 LOADNIL                          R4
       44 RETURN                           R4 1
       45 NEWTABLE                         R4 0 0
       47 GETTABLEKS                       R5 R3 K7 ["groups"]
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 GETTABLEKS                       R11 R9 K12 ["id"]
       54 FASTCALL1                        TYPE R11 ; [+2]
       55 GETIMPORT                        R10 K9 [type]
       57 CALL                             R10 1 1
       58 JUMPIFNOTEQKS                    R10 K13 ["number"] ; [+24]
       60 GETTABLEKS                       R11 R9 K14 ["name"]
       62 FASTCALL1                        TYPE R11 ; [+2]
       63 GETIMPORT                        R10 K9 [type]
       65 CALL                             R10 1 1
       66 JUMPIFNOTEQKS                    R10 K15 ["string"] ; [+16]
       68 DUPTABLE                         R12 K16 [{"id", "name"}]
       69 GETTABLEKS                       R13 R9 K12 ["id"]
       71 SETTABLEKS                       R13 R12 K12 ["id"]
       73 GETTABLEKS                       R13 R9 K14 ["name"]
       75 SETTABLEKS                       R13 R12 K14 ["name"]
       77 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       79 MOVE                             R11 R4
       80 GETIMPORT                        R10 K18 [table.insert]
       82 CALL                             R10 2 0
       83 FORGLOOP                         R5 2 ; [-32]
       85 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R2 R0 K0 ["userId"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+12]
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K1 ["[AssetSearchTool] getUserGroups: returning cached groups (userId=%*)"]
        9 GETTABLEKS                       R5 R0 K0 ["userId"]
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 RETURN                           R1 1
       18 DUPCLOSURE                       R1 K3 [PROTO_10]
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U2
       21 LOADNIL                          R2
       22 GETUPVAL                         R3 4
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R8 R1
       27 MOVE                             R9 R7
       28 CALL                             R8 1 1
       29 MOVE                             R2 R8
       30 JUMPIFNOTEQKNIL                  R2 ; [+3]
       32 FORGLOOP                         R3 2 ; [-7]
       34 JUMPIFNOTEQKNIL                  R2 ; [+7]
       36 GETUPVAL                         R3 2
       37 LOADK                            R4 K4 ["[AssetSearchTool] getUserGroups: both surfaces failed; returning empty without caching"]
       38 CALL                             R3 1 0
       39 NEWTABLE                         R3 0 0
       41 RETURN                           R3 1
       42 GETUPVAL                         R3 2
       43 LOADK                            R5 K5 ["[AssetSearchTool] getUserGroups: resolved %* groups for userId=%*"]
       44 LENGTH                           R7 R2
       45 GETTABLEKS                       R8 R0 K0 ["userId"]
       47 NAMECALL                         R5 R5 K2 ["format"]
       49 CALL                             R5 3 1
       50 MOVE                             R4 R5
       51 CALL                             R3 1 0
       52 GETTABLEKS                       R3 R0 K0 ["userId"]
       54 SETUPVAL                         R3 1
       55 SETUPVAL                         R2 0
       56 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["groupId"]
        2 JUMPIFEQKNIL                     R4 ; [+8]
        4 GETTABLEKS                       R4 R0 K0 ["groupId"]
        6 JUMPIFEQKS                       R4 K1 [""] ; [+4]
        8 GETTABLEKS                       R3 R0 K0 ["groupId"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 GETTABLEKS                       R5 R0 K2 ["groupName"]
       14 JUMPIFEQKNIL                     R5 ; [+12]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["trim"]
       19 GETTABLEKS                       R6 R0 K2 ["groupName"]
       21 CALL                             R5 1 1
       22 JUMPIFEQKS                       R5 K1 [""] ; [+4]
       24 GETTABLEKS                       R4 R0 K2 ["groupName"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 JUMPIFNOTEQKNIL                  R3 ; [+6]
       30 JUMPIFNOTEQKNIL                  R4 ; [+4]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 RETURN                           R5 2
       35 JUMPIFEQKNIL                     R3 ; [+19]
       37 JUMPIFEQKNIL                     R4 ; [+17]
       39 LOADNIL                          R5
       40 DUPTABLE                         R6 K7 [{"status", "error", "nextSteps"}]
       41 LOADK                            R7 K5 ["error"]
       42 SETTABLEKS                       R7 R6 K4 ["status"]
       44 LOADK                            R7 K8 ["Provide either groupId or groupName, not both."]
       45 SETTABLEKS                       R7 R6 K5 ["error"]
       47 NEWTABLE                         R7 0 1
       49 LOADK                            R8 K9 ["Drop one of the two arguments and retry."]
       50 SETLIST                          R7 R8 1 [1]
       52 SETTABLEKS                       R7 R6 K6 ["nextSteps"]
       54 RETURN                           R5 2
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K10 ["Group"]
       58 JUMPIFEQ                         R1 R5 ; [+22]
       60 LOADNIL                          R5
       61 DUPTABLE                         R6 K7 [{"status", "error", "nextSteps"}]
       62 LOADK                            R7 K5 ["error"]
       63 SETTABLEKS                       R7 R6 K4 ["status"]
       65 LOADK                            R8 K11 ["groupId/groupName only apply when scope is \"group\"; scope is \"%*\"."]
       66 MOVE                             R10 R1
       67 NAMECALL                         R8 R8 K12 ["format"]
       69 CALL                             R8 2 1
       70 MOVE                             R7 R8
       71 SETTABLEKS                       R7 R6 K5 ["error"]
       73 NEWTABLE                         R7 0 1
       75 LOADK                            R8 K13 ["Set scope='group' to search the specified group, or remove the groupId/groupName argument."]
       76 SETLIST                          R7 R8 1 [1]
       78 SETTABLEKS                       R7 R6 K6 ["nextSteps"]
       80 RETURN                           R5 2
       81 JUMPIFEQKNIL                     R3 ; [+67]
       83 FASTCALL1                        TONUMBER R3 ; [+3]
       84 MOVE                             R6 R3
       85 GETIMPORT                        R5 K15 [tonumber]
       87 CALL                             R5 1 1
       88 JUMPIFNOT                        R5 ; [+3]
       89 LOADN                            R6 0
       90 JUMPIFNOTLE                      R5 R6 ; [+22]
       92 LOADNIL                          R6
       93 DUPTABLE                         R7 K7 [{"status", "error", "nextSteps"}]
       94 LOADK                            R8 K5 ["error"]
       95 SETTABLEKS                       R8 R7 K4 ["status"]
       97 LOADK                            R9 K16 ["groupId \"%*\" is not a valid positive numeric ID."]
       98 MOVE                             R11 R3
       99 NAMECALL                         R9 R9 K12 ["format"]
      101 CALL                             R9 2 1
      102 MOVE                             R8 R9
      103 SETTABLEKS                       R8 R7 K5 ["error"]
      105 NEWTABLE                         R8 0 1
      107 LOADK                            R9 K17 ["Pass a positive numeric group ID, or use groupName to look up by name."]
      108 SETLIST                          R8 R9 1 [1]
      110 SETTABLEKS                       R8 R7 K6 ["nextSteps"]
      112 RETURN                           R6 2
      113 MOVE                             R6 R2
      114 LOADNIL                          R7
      115 LOADNIL                          R8
      116 FORGPREP                         R6
      117 GETTABLEKS                       R11 R10 K18 ["id"]
      119 JUMPIFNOTEQ                      R11 R5 ; [+4]
      121 MOVE                             R11 R5
      122 LOADNIL                          R12
      123 RETURN                           R11 2
      124 FORGLOOP                         R6 2 ; [-8]
      126 LOADNIL                          R6
      127 DUPTABLE                         R7 K20 [{"status", "error", "groups", "nextSteps"}]
      128 LOADK                            R8 K5 ["error"]
      129 SETTABLEKS                       R8 R7 K4 ["status"]
      131 LOADK                            R9 K21 ["groupId \"%*\" is not one of your groups."]
      132 MOVE                             R11 R3
      133 NAMECALL                         R9 R9 K12 ["format"]
      135 CALL                             R9 2 1
      136 MOVE                             R8 R9
      137 SETTABLEKS                       R8 R7 K5 ["error"]
      139 SETTABLEKS                       R2 R7 K19 ["groups"]
      141 NEWTABLE                         R8 0 1
      143 LOADK                            R9 K22 ["Use one of the listed group ids, or pass groupName to look up by name."]
      144 SETLIST                          R8 R9 1 [1]
      146 SETTABLEKS                       R8 R7 K6 ["nextSteps"]
      148 RETURN                           R6 2
      149 JUMPIFNOTEQKNIL                  R4 ; [+2]
      151 LOADB                            R6 0 +1
      152 LOADB                            R6 1
      153 FASTCALL2K                       ASSERT R6 K23 ; [+4]
      155 LOADK                            R7 K23 ["rawGroupName must be set when rawGroupId is nil"]
      156 GETIMPORT                        R5 K25 [assert]
      158 CALL                             R5 2 0
      159 GETIMPORT                        R5 K28 [string.lower]
      161 GETUPVAL                         R6 0
      162 GETTABLEKS                       R6 R6 K3 ["trim"]
      164 MOVE                             R7 R4
      165 CALL                             R6 1 -1
      166 CALL                             R5 -1 1
      167 MOVE                             R6 R2
      168 LOADNIL                          R7
      169 LOADNIL                          R8
      170 FORGPREP                         R6
      171 GETIMPORT                        R11 K28 [string.lower]
      173 GETTABLEKS                       R12 R10 K29 ["name"]
      175 CALL                             R11 1 1
      176 JUMPIFNOTEQ                      R11 R5 ; [+5]
      178 GETTABLEKS                       R11 R10 K18 ["id"]
      180 LOADNIL                          R12
      181 RETURN                           R11 2
      182 FORGLOOP                         R6 2 ; [-12]
      184 LOADNIL                          R6
      185 DUPTABLE                         R7 K20 [{"status", "error", "groups", "nextSteps"}]
      186 LOADK                            R8 K5 ["error"]
      187 SETTABLEKS                       R8 R7 K4 ["status"]
      189 LOADK                            R9 K30 ["groupName \"%*\" did not match any of your groups."]
      190 MOVE                             R11 R4
      191 NAMECALL                         R9 R9 K12 ["format"]
      193 CALL                             R9 2 1
      194 MOVE                             R8 R9
      195 SETTABLEKS                       R8 R7 K5 ["error"]
      197 SETTABLEKS                       R2 R7 K19 ["groups"]
      199 NEWTABLE                         R8 0 1
      201 LOADK                            R9 K31 ["Use one of the listed group names exactly, or pass a numeric groupId."]
      202 SETLIST                          R8 R9 1 [1]
      204 SETTABLEKS                       R8 R7 K6 ["nextSteps"]
      206 RETURN                           R6 2

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postRbxApi"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 DUPTABLE                         R1 K6 [{"query", "maxPageSize", "sortCategory", "sortDirection", "searchView", "includeOnlyVerifiedCreators"}]
        1 GETTABLEKS                       R2 R0 K7 ["keyword"]
        3 SETTABLEKS                       R2 R1 K0 ["query"]
        5 GETTABLEKS                       R3 R0 K9 ["limit"]
        7 ORK                              R2 R3 K8 [10]
        8 SETTABLEKS                       R2 R1 K1 ["maxPageSize"]
       10 LOADK                            R2 K10 ["Relevance"]
       11 SETTABLEKS                       R2 R1 K2 ["sortCategory"]
       13 LOADK                            R2 K11 ["None"]
       14 SETTABLEKS                       R2 R1 K3 ["sortDirection"]
       16 LOADK                            R2 K12 ["Full"]
       17 SETTABLEKS                       R2 R1 K4 ["searchView"]
       19 GETTABLEKS                       R3 R0 K5 ["includeOnlyVerifiedCreators"]
       21 ORK                              R2 R3 K13 [False]
       22 SETTABLEKS                       R2 R1 K5 ["includeOnlyVerifiedCreators"]
       24 GETTABLEKS                       R3 R0 K15 ["searchCategoryType"]
       26 ORK                              R2 R3 K14 ["Model"]
       27 SETTABLEKS                       R2 R1 K15 ["searchCategoryType"]
       29 GETTABLEKS                       R2 R0 K16 ["minPrice"]
       31 JUMPIFEQKNIL                     R2 ; [+5]
       33 GETTABLEKS                       R2 R0 K16 ["minPrice"]
       35 SETTABLEKS                       R2 R1 K17 ["minPriceCents"]
       37 GETTABLEKS                       R2 R0 K18 ["maxPrice"]
       39 JUMPIFEQKNIL                     R2 ; [+5]
       41 GETTABLEKS                       R2 R0 K18 ["maxPrice"]
       43 SETTABLEKS                       R2 R1 K19 ["maxPriceCents"]
       45 GETTABLEKS                       R2 R0 K20 ["facets"]
       47 JUMPIFEQKNIL                     R2 ; [+5]
       49 GETTABLEKS                       R2 R0 K20 ["facets"]
       51 SETTABLEKS                       R2 R1 K20 ["facets"]
       53 GETTABLEKS                       R2 R0 K21 ["tags"]
       55 JUMPIFEQKNIL                     R2 ; [+5]
       57 GETTABLEKS                       R2 R0 K21 ["tags"]
       59 SETTABLEKS                       R2 R1 K21 ["tags"]
       61 GETTABLEKS                       R2 R0 K22 ["isPackageFilter"]
       63 JUMPIFNOT                        R2 ; [+10]
       64 DUPTABLE                         R2 K24 [{"includedSubTypes"}]
       65 NEWTABLE                         R3 0 1
       67 LOADK                            R4 K25 ["Package"]
       68 SETLIST                          R3 R4 1 [1]
       70 SETTABLEKS                       R3 R2 K23 ["includedSubTypes"]
       72 SETTABLEKS                       R2 R1 K26 ["modelSearchFilters"]
       74 GETTABLEKS                       R2 R1 K15 ["searchCategoryType"]
       76 JUMPIFNOTEQKS                    R2 K27 ["Audio"] ; [+31]
       78 GETTABLEKS                       R2 R0 K28 ["minDuration"]
       80 JUMPIFNOTEQKNIL                  R2 ; [+5]
       82 GETTABLEKS                       R2 R0 K29 ["maxDuration"]
       84 JUMPIFEQKNIL                     R2 ; [+23]
       86 NEWTABLE                         R2 0 0
       88 SETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       90 GETTABLEKS                       R2 R0 K28 ["minDuration"]
       92 JUMPIFNOT                        R2 ; [+6]
       93 GETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       95 GETTABLEKS                       R3 R0 K28 ["minDuration"]
       97 SETTABLEKS                       R3 R2 K31 ["minDurationSeconds"]
       99 GETTABLEKS                       R2 R0 K29 ["maxDuration"]
      101 JUMPIFNOT                        R2 ; [+6]
      102 GETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
      104 GETTABLEKS                       R3 R0 K29 ["maxDuration"]
      106 SETTABLEKS                       R3 R2 K32 ["maxDurationSeconds"]
      108 GETUPVAL                         R3 0
      109 GETTABLEKS                       R3 R3 K33 ["APIS_URL"]
      111 LOADK                            R4 K34 ["toolbox-service/v2/assets:search"]
      112 CONCAT                           R2 R3 R4
      113 GETUPVAL                         R3 1
      114 MOVE                             R5 R1
      115 NAMECALL                         R3 R3 K35 ["JSONEncode"]
      117 CALL                             R3 2 1
      118 GETUPVAL                         R4 2
      119 LOADK                            R6 K36 ["[AssetSearchTool] fetchCreatorStoreAssets: URL=%*"]
      120 MOVE                             R8 R2
      121 NAMECALL                         R6 R6 K37 ["format"]
      123 CALL                             R6 2 1
      124 MOVE                             R5 R6
      125 CALL                             R4 1 0
      126 GETUPVAL                         R4 2
      127 LOADK                            R6 K38 ["[AssetSearchTool] fetchCreatorStoreAssets: body=%*"]
      128 MOVE                             R8 R3
      129 NAMECALL                         R6 R6 K37 ["format"]
      131 CALL                             R6 2 1
      132 MOVE                             R5 R6
      133 CALL                             R4 1 0
      134 GETIMPORT                        R4 K40 [pcall]
      136 NEWCLOSURE                       R5 P0
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R3
      140 CALL                             R4 1 2
      141 JUMPIF                           R4 ; [+17]
      142 GETUPVAL                         R6 2
      143 LOADK                            R8 K41 ["[AssetSearchTool] fetchCreatorStoreAssets: FAILED error=%*"]
      144 FASTCALL1                        TOSTRING R5 ; [+3]
      145 MOVE                             R11 R5
      146 GETIMPORT                        R10 K43 [tostring]
      148 CALL                             R10 1 1
      149 NAMECALL                         R8 R8 K37 ["format"]
      151 CALL                             R8 2 1
      152 MOVE                             R7 R8
      153 CALL                             R6 1 0
      154 NEWTABLE                         R6 0 0
      156 NEWTABLE                         R7 0 0
      158 RETURN                           R6 2
      159 GETUPVAL                         R6 2
      160 LOADK                            R8 K44 ["[AssetSearchTool] fetchCreatorStoreAssets: SUCCESS bodyLen=%*"]
      161 LENGTH                           R10 R5
      162 NAMECALL                         R8 R8 K37 ["format"]
      164 CALL                             R8 2 1
      165 MOVE                             R7 R8
      166 CALL                             R6 1 0
      167 GETUPVAL                         R6 2
      168 LOADK                            R8 K45 ["[AssetSearchTool] fetchCreatorStoreAssets: preview=%*"]
      169 LOADN                            R12 1
      170 LOADN                            R13 44
      171 FASTCALL3                        STRING_SUB R5 R12 R13
      173 MOVE                             R11 R5
      174 GETIMPORT                        R10 K48 [string.sub]
      176 CALL                             R10 3 1
      177 NAMECALL                         R8 R8 K37 ["format"]
      179 CALL                             R8 2 1
      180 MOVE                             R7 R8
      181 CALL                             R6 1 0
      182 GETIMPORT                        R6 K40 [pcall]
      184 NEWCLOSURE                       R7 P1
      185 CAPTURE                          UPVAL U1
      186 CAPTURE                          VAL R5
      187 CALL                             R6 1 2
      188 JUMPIFNOT                        R6 ; [+1]
      189 JUMPIF                           R7 ; [+5]
      190 NEWTABLE                         R8 0 0
      192 NEWTABLE                         R9 0 0
      194 RETURN                           R8 2
      195 NEWTABLE                         R8 0 0
      197 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      199 JUMPIFNOT                        R9 ; [+9]
      200 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      202 GETTABLEKS                       R9 R9 K50 ["availableFacets"]
      204 JUMPIFNOT                        R9 ; [+4]
      205 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      207 GETTABLEKS                       R8 R9 K50 ["availableFacets"]
      209 NEWTABLE                         R9 0 0
      211 GETTABLEKS                       R10 R7 K51 ["creatorStoreAssets"]
      213 JUMPIF                           R10 ; [+2]
      214 NEWTABLE                         R10 0 0
      216 LOADNIL                          R11
      217 LOADNIL                          R12
      218 FORGPREP                         R10
      219 GETTABLEKS                       R15 R14 K52 ["asset"]
      221 GETTABLEKS                       R16 R14 K53 ["creator"]
      223 JUMPIF                           R16 ; [+2]
      224 NEWTABLE                         R16 0 0
      226 GETTABLEKS                       R17 R14 K54 ["creatorStoreProduct"]
      228 LOADNIL                          R18
      229 LOADN                            R19 0
      230 JUMPIFNOT                        R17 ; [+68]
      231 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      233 JUMPIFNOT                        R20 ; [+65]
      234 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      236 GETTABLEKS                       R20 R20 K56 ["quantity"]
      238 JUMPIFNOT                        R20 ; [+60]
      239 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      241 GETTABLEKS                       R21 R20 K56 ["quantity"]
      243 GETTABLEKS                       R23 R21 K58 ["significand"]
      245 ORK                              R22 R23 K57 [0]
      246 GETTABLEKS                       R24 R21 K59 ["exponent"]
      248 ORK                              R23 R24 K57 [0]
      249 LOADN                            R24 0
      250 JUMPIFNOTLT                      R24 R22 ; [+48]
      252 LOADN                            R26 10
      253 POW                              R25 R26 R23
      254 MUL                              R24 R22 R25
      255 MULK                             R27 R24 K61 [100]
      256 ADDK                             R26 R27 K60 [0.5]
      257 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      258 GETIMPORT                        R25 K64 [math.floor]
      260 CALL                             R25 1 1
      261 MOVE                             R19 R25
      262 GETTABLEKS                       R26 R20 K66 ["currencyCode"]
      264 ORK                              R25 R26 K65 ["USD"]
      265 JUMPIFNOTEQKS                    R25 K65 ["USD"] ; [+8]
      267 GETIMPORT                        R26 K67 [string.format]
      269 LOADK                            R27 K68 ["$%.2f"]
      270 MOVE                             R28 R24
      271 CALL                             R26 2 1
      272 MOVE                             R18 R26
      273 JUMP                             ; [+25]
      274 JUMPIFNOTEQKS                    R25 K69 ["GBP"] ; [+8]
      276 GETIMPORT                        R26 K67 [string.format]
      278 LOADK                            R27 K70 ["£%.2f"]
      279 MOVE                             R28 R24
      280 CALL                             R26 2 1
      281 MOVE                             R18 R26
      282 JUMP                             ; [+16]
      283 JUMPIFNOTEQKS                    R25 K71 ["EUR"] ; [+8]
      285 GETIMPORT                        R26 K67 [string.format]
      287 LOADK                            R27 K72 ["€%.2f"]
      288 MOVE                             R28 R24
      289 CALL                             R26 2 1
      290 MOVE                             R18 R26
      291 JUMP                             ; [+7]
      292 GETIMPORT                        R26 K67 [string.format]
      294 LOADK                            R27 K73 ["%s %.2f"]
      295 MOVE                             R28 R25
      296 MOVE                             R29 R24
      297 CALL                             R26 3 1
      298 MOVE                             R18 R26
      299 GETUPVAL                         R20 2
      300 LOADK                            R22 K74 ["[AssetSearchTool] fetchCreatorStoreAssets: asset %* \"%*\" priceCents=%* priceLabel=%*"]
      301 JUMPIFNOT                        R15 ; [+3]
      302 GETTABLEKS                       R24 R15 K75 ["id"]
      304 JUMPIF                           R24 ; [+1]
      305 LOADK                            R24 K76 ["?"]
      306 JUMPIFNOT                        R15 ; [+3]
      307 GETTABLEKS                       R25 R15 K77 ["name"]
      309 JUMPIF                           R25 ; [+1]
      310 LOADK                            R25 K76 ["?"]
      311 MOVE                             R26 R19
      312 ORK                              R27 R18 K78 ["free"]
      313 NAMECALL                         R22 R22 K37 ["format"]
      315 CALL                             R22 5 1
      316 MOVE                             R21 R22
      317 CALL                             R20 1 0
      318 JUMPIFNOT                        R15 ; [+3]
      319 GETTABLEKS                       R20 R15 K79 ["subTypes"]
      321 JUMPIF                           R20 ; [+2]
      322 NEWTABLE                         R20 0 0
      324 GETUPVAL                         R21 4
      325 GETTABLEKS                       R21 R21 K80 ["isPackageAsset"]
      327 LOADNIL                          R22
      328 MOVE                             R23 R20
      329 CALL                             R21 2 1
      330 JUMPIFNOT                        R21 ; [+2]
      331 LOADK                            R22 K25 ["Package"]
      332 JUMP                             ; [+7]
      333 GETUPVAL                         R24 5
      334 MOVE                             R25 R15
      335 JUMPIFNOT                        R25 ; [+2]
      336 GETTABLEKS                       R25 R15 K81 ["assetTypeId"]
      338 GETTABLE                         R23 R24 R25
      339 ORK                              R22 R23 K14 ["Model"]
      340 DUPTABLE                         R25 K84 [{"Asset", "Creator"}]
      341 DUPTABLE                         R26 K93 [{"Id", "Name", "Description", "TypeId", "TypeName", "Price", "PriceLabel", "SubTypes"}]
      342 MOVE                             R27 R15
      343 JUMPIFNOT                        R27 ; [+2]
      344 GETTABLEKS                       R27 R15 K75 ["id"]
      346 SETTABLEKS                       R27 R26 K85 ["Id"]
      348 JUMPIFNOT                        R15 ; [+3]
      349 GETTABLEKS                       R27 R15 K77 ["name"]
      351 JUMPIF                           R27 ; [+1]
      352 LOADK                            R27 K94 ["Unknown"]
      353 SETTABLEKS                       R27 R26 K86 ["Name"]
      355 JUMPIFNOT                        R15 ; [+3]
      356 GETTABLEKS                       R27 R15 K95 ["description"]
      358 JUMPIF                           R27 ; [+1]
      359 LOADNIL                          R27
      360 SETTABLEKS                       R27 R26 K87 ["Description"]
      362 JUMPIFNOT                        R15 ; [+3]
      363 GETTABLEKS                       R27 R15 K81 ["assetTypeId"]
      365 JUMPIF                           R27 ; [+1]
      366 LOADN                            R27 10
      367 SETTABLEKS                       R27 R26 K88 ["TypeId"]
      369 SETTABLEKS                       R22 R26 K89 ["TypeName"]
      371 SETTABLEKS                       R19 R26 K90 ["Price"]
      373 SETTABLEKS                       R18 R26 K91 ["PriceLabel"]
      375 SETTABLEKS                       R20 R26 K92 ["SubTypes"]
      377 SETTABLEKS                       R26 R25 K82 ["Asset"]
      379 DUPTABLE                         R26 K97 [{"Name", "Id", "IsVerifiedCreator"}]
      380 GETTABLEKS                       R28 R16 K77 ["name"]
      382 ORK                              R27 R28 K94 ["Unknown"]
      383 SETTABLEKS                       R27 R26 K86 ["Name"]
      385 GETTABLEKS                       R27 R16 K98 ["userId"]
      387 SETTABLEKS                       R27 R26 K85 ["Id"]
      389 GETTABLEKS                       R28 R16 K99 ["verified"]
      391 ORK                              R27 R28 K13 [False]
      392 SETTABLEKS                       R27 R26 K96 ["IsVerifiedCreator"]
      394 SETTABLEKS                       R26 R25 K83 ["Creator"]
      396 FASTCALL2                        TABLE_INSERT R9 R25 ; [+4]
      398 MOVE                             R24 R9
      399 GETIMPORT                        R23 K102 [table.insert]
      401 CALL                             R23 2 0
      402 FORGLOOP                         R10 2 ; [-184]
      404 GETUPVAL                         R10 2
      405 LOADK                            R12 K103 ["[AssetSearchTool] fetchCreatorStoreAssets: parsed %* results, %* available facets"]
      406 LENGTH                           R14 R9
      407 LENGTH                           R15 R8
      408 NAMECALL                         R12 R12 K37 ["format"]
      410 CALL                             R12 3 1
      411 MOVE                             R11 R12
      412 CALL                             R10 1 0
      413 MOVE                             R10 R9
      414 MOVE                             R11 R8
      415 RETURN                           R10 2

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["[AssetSearchTool] parseMarketplace: bodyLen=%* preview=%*"]
        2 LENGTH                           R5 R0
        3 LOADN                            R8 1
        4 LOADN                            R9 200
        5 FASTCALL3                        STRING_SUB R0 R8 R9
        7 MOVE                             R7 R0
        8 GETIMPORT                        R6 K3 [string.sub]
       10 CALL                             R6 3 1
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 3 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K6 [pcall]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CALL                             R1 1 2
       22 JUMPIFNOT                        R1 ; [+1]
       23 JUMPIF                           R2 ; [+17]
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K7 ["[AssetSearchTool] parseMarketplace: JSON parse FAILED: parseOk=%*"]
       26 FASTCALL1                        TOSTRING R1 ; [+3]
       27 MOVE                             R8 R1
       28 GETIMPORT                        R7 K9 [tostring]
       30 CALL                             R7 1 1
       31 NAMECALL                         R5 R5 K4 ["format"]
       33 CALL                             R5 2 1
       34 MOVE                             R4 R5
       35 CALL                             R3 1 0
       36 NEWTABLE                         R3 0 0
       38 NEWTABLE                         R4 0 0
       40 RETURN                           R3 2
       41 GETTABLEKS                       R3 R2 K10 ["success"]
       43 JUMPIFNOTEQKB                    R3 FALSE ; [+16]
       45 GETUPVAL                         R3 0
       46 LOADK                            R5 K11 ["[AssetSearchTool] parseMarketplace: error: %*"]
       47 GETTABLEKS                       R8 R2 K13 ["error"]
       49 ORK                              R7 R8 K12 ["unknown"]
       50 NAMECALL                         R5 R5 K4 ["format"]
       52 CALL                             R5 2 1
       53 MOVE                             R4 R5
       54 CALL                             R3 1 0
       55 NEWTABLE                         R3 0 0
       57 NEWTABLE                         R4 0 0
       59 RETURN                           R3 2
       60 GETTABLEKS                       R3 R2 K14 ["AvailableFacets"]
       62 JUMPIF                           R3 ; [+2]
       63 NEWTABLE                         R3 0 0
       65 NEWTABLE                         R4 0 0
       67 GETTABLEKS                       R5 R2 K15 ["Results"]
       69 JUMPIF                           R5 ; [+5]
       70 GETTABLEKS                       R5 R2 K16 ["data"]
       72 JUMPIF                           R5 ; [+2]
       73 NEWTABLE                         R5 0 0
       75 GETUPVAL                         R6 0
       76 LOADK                            R8 K17 ["[AssetSearchTool] parseMarketplace: found %* raw items (Results=%*, data=%*)"]
       77 LENGTH                           R10 R5
       78 GETTABLEKS                       R12 R2 K15 ["Results"]
       80 JUMPIFNOT                        R12 ; [+4]
       81 GETTABLEKS                       R12 R2 K15 ["Results"]
       83 LENGTH                           R11 R12
       84 JUMPIF                           R11 ; [+1]
       85 LOADK                            R11 K18 ["nil"]
       86 GETTABLEKS                       R13 R2 K16 ["data"]
       88 JUMPIFNOT                        R13 ; [+4]
       89 GETTABLEKS                       R13 R2 K16 ["data"]
       91 LENGTH                           R12 R13
       92 JUMPIF                           R12 ; [+1]
       93 LOADK                            R12 K18 ["nil"]
       94 NAMECALL                         R8 R8 K4 ["format"]
       96 CALL                             R8 4 1
       97 MOVE                             R7 R8
       98 CALL                             R6 1 0
       99 MOVE                             R6 R5
      100 LOADNIL                          R7
      101 LOADNIL                          R8
      102 FORGPREP                         R6
      103 GETTABLEKS                       R11 R10 K19 ["Asset"]
      105 JUMPIF                           R11 ; [+4]
      106 GETTABLEKS                       R11 R10 K20 ["asset"]
      108 JUMPIF                           R11 ; [+1]
      109 MOVE                             R11 R10
      110 GETTABLEKS                       R12 R10 K21 ["Creator"]
      112 JUMPIF                           R12 ; [+5]
      113 GETTABLEKS                       R12 R10 K22 ["creator"]
      115 JUMPIF                           R12 ; [+2]
      116 NEWTABLE                         R12 0 0
      118 JUMPIFNOT                        R11 ; [+67]
      119 GETTABLEKS                       R13 R11 K23 ["Id"]
      121 JUMPIFNOT                        R13 ; [+64]
      122 GETTABLEKS                       R14 R11 K25 ["TypeName"]
      124 ORK                              R13 R14 K24 ["Unknown"]
      125 DUPTABLE                         R16 K36 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      126 GETTABLEKS                       R18 R11 K23 ["Id"]
      128 FASTCALL1                        TOSTRING R18 ; [+2]
      129 GETIMPORT                        R17 K9 [tostring]
      131 CALL                             R17 1 1
      132 SETTABLEKS                       R17 R16 K26 ["assetId"]
      134 GETTABLEKS                       R18 R11 K37 ["Name"]
      136 ORK                              R17 R18 K24 ["Unknown"]
      137 SETTABLEKS                       R17 R16 K27 ["name"]
      139 GETTABLEKS                       R17 R11 K38 ["Description"]
      141 SETTABLEKS                       R17 R16 K28 ["description"]
      143 SETTABLEKS                       R13 R16 K29 ["assetType"]
      145 GETUPVAL                         R17 2
      146 GETTABLEKS                       R17 R17 K39 ["CreatorStore"]
      148 SETTABLEKS                       R17 R16 K30 ["source"]
      150 LOADNIL                          R17
      151 SETTABLEKS                       R17 R16 K31 ["location"]
      153 GETTABLEKS                       R17 R12 K37 ["Name"]
      155 JUMPIF                           R17 ; [+4]
      156 GETTABLEKS                       R17 R12 K27 ["name"]
      158 JUMPIF                           R17 ; [+1]
      159 LOADNIL                          R17
      160 SETTABLEKS                       R17 R16 K32 ["creatorName"]
      162 GETTABLEKS                       R18 R11 K41 ["Price"]
      164 ORK                              R17 R18 K40 [0]
      165 SETTABLEKS                       R17 R16 K33 ["priceCents"]
      167 GETTABLEKS                       R17 R11 K42 ["PriceLabel"]
      169 SETTABLEKS                       R17 R16 K34 ["priceLabel"]
      171 GETTABLEKS                       R19 R11 K41 ["Price"]
      173 ORK                              R18 R19 K40 [0]
      174 JUMPIFEQKN                       R18 K40 [0] ; [+2]
      176 LOADB                            R17 0 +1
      177 LOADB                            R17 1
      178 SETTABLEKS                       R17 R16 K35 ["isFree"]
      180 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      182 MOVE                             R15 R4
      183 GETIMPORT                        R14 K45 [table.insert]
      185 CALL                             R14 2 0
      186 FORGLOOP                         R6 2 ; [-84]
      188 MOVE                             R6 R4
      189 MOVE                             R7 R3
      190 RETURN                           R6 2

PROTO_18:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R3 0
        2 LOADK                            R4 K0 ["[AssetSearchTool] parseInventory: nil response"]
        3 CALL                             R3 1 0
        4 NEWTABLE                         R3 0 0
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R0 K1 ["success"]
        9 JUMPIFNOTEQKB                    R3 FALSE ; [+14]
       11 GETUPVAL                         R3 0
       12 LOADK                            R5 K2 ["[AssetSearchTool] parseInventory: error: %*"]
       13 GETTABLEKS                       R8 R0 K4 ["error"]
       15 ORK                              R7 R8 K3 ["unknown"]
       16 NAMECALL                         R5 R5 K5 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 CALL                             R3 1 0
       21 NEWTABLE                         R3 0 0
       23 RETURN                           R3 1
       24 NEWTABLE                         R3 0 0
       26 GETTABLEKS                       R4 R0 K6 ["items"]
       28 JUMPIF                           R4 ; [+5]
       29 GETTABLEKS                       R4 R0 K7 ["creatorInventoryItems"]
       31 JUMPIF                           R4 ; [+2]
       32 NEWTABLE                         R4 0 0
       34 GETUPVAL                         R5 0
       35 LOADK                            R7 K8 ["[AssetSearchTool] parseInventory: found %* raw items"]
       36 LENGTH                           R9 R4
       37 NAMECALL                         R7 R7 K5 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R5 1 0
       42 MOVE                             R5 R4
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 FORGPREP                         R5
       46 GETTABLEKS                       R11 R9 K9 ["assetItem"]
       48 OR                               R10 R11 R9
       49 GETTABLEKS                       R12 R10 K10 ["asset"]
       51 OR                               R11 R12 R10
       52 JUMPIFNOT                        R11 ; [+207]
       53 GETTABLEKS                       R12 R11 K11 ["assetId"]
       55 JUMPIF                           R12 ; [+3]
       56 GETTABLEKS                       R12 R11 K12 ["id"]
       58 JUMPIFNOT                        R12 ; [+201]
       59 GETTABLEKS                       R13 R11 K11 ["assetId"]
       61 JUMPIF                           R13 ; [+2]
       62 GETTABLEKS                       R13 R11 K12 ["id"]
       64 FASTCALL1                        TOSTRING R13 ; [+2]
       65 GETIMPORT                        R12 K14 [tostring]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R11 K15 ["assetType"]
       70 JUMPIF                           R13 ; [+4]
       71 GETTABLEKS                       R13 R11 K16 ["type"]
       73 JUMPIF                           R13 ; [+1]
       74 LOADK                            R13 K17 ["Unknown"]
       75 GETUPVAL                         R16 1
       76 GETTABLE                         R15 R16 R13
       77 OR                               R14 R15 R13
       78 LOADB                            R15 1
       79 GETTABLEKS                       R16 R10 K18 ["isPackage"]
       81 JUMPIFEQKB                       R16 TRUE ; [+11]
       83 GETUPVAL                         R15 2
       84 GETTABLEKS                       R15 R15 K19 ["isPackageAsset"]
       86 LOADNIL                          R16
       87 GETTABLEKS                       R17 R11 K20 ["assetSubTypes"]
       89 JUMPIF                           R17 ; [+2]
       90 GETTABLEKS                       R17 R11 K21 ["subTypes"]
       92 CALL                             R15 2 1
       93 JUMPIFNOT                        R15 ; [+1]
       94 GETUPVAL                         R14 3
       95 LOADNIL                          R16
       96 LOADNIL                          R17
       97 GETTABLEKS                       R18 R11 K22 ["creationContext"]
       99 FASTCALL1                        TYPE R18 ; [+3]
      100 MOVE                             R20 R18
      101 GETIMPORT                        R19 K23 [type]
      103 CALL                             R19 1 1
      104 JUMPIFNOTEQKS                    R19 K24 ["table"] ; [+94]
      106 GETTABLEKS                       R19 R18 K25 ["group"]
      108 GETTABLEKS                       R20 R18 K26 ["user"]
      110 GETTABLEKS                       R23 R18 K27 ["creator"]
      112 FASTCALL1                        TYPE R23 ; [+2]
      113 GETIMPORT                        R22 K23 [type]
      115 CALL                             R22 1 1
      116 JUMPIFNOTEQKS                    R22 K24 ["table"] ; [+4]
      118 GETTABLEKS                       R21 R18 K27 ["creator"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R21
      122 JUMPIFEQKNIL                     R19 ; [+8]
      124 FASTCALL1                        TOSTRING R19 ; [+3]
      125 MOVE                             R23 R19
      126 GETIMPORT                        R22 K14 [tostring]
      128 CALL                             R22 1 1
      129 MOVE                             R16 R22
      130 JUMP                             ; [+33]
      131 JUMPIFEQKNIL                     R20 ; [+8]
      133 FASTCALL1                        TOSTRING R20 ; [+3]
      134 MOVE                             R23 R20
      135 GETIMPORT                        R22 K14 [tostring]
      137 CALL                             R22 1 1
      138 MOVE                             R16 R22
      139 JUMP                             ; [+24]
      140 JUMPIFNOT                        R21 ; [+23]
      141 GETTABLEKS                       R22 R21 K28 ["groupId"]
      143 JUMPIFEQKNIL                     R22 ; [+9]
      145 GETTABLEKS                       R23 R21 K28 ["groupId"]
      147 FASTCALL1                        TOSTRING R23 ; [+2]
      148 GETIMPORT                        R22 K14 [tostring]
      150 CALL                             R22 1 1
      151 MOVE                             R16 R22
      152 JUMP                             ; [+11]
      153 GETTABLEKS                       R22 R21 K29 ["userId"]
      155 JUMPIFEQKNIL                     R22 ; [+8]
      157 GETTABLEKS                       R23 R21 K29 ["userId"]
      159 FASTCALL1                        TOSTRING R23 ; [+2]
      160 GETIMPORT                        R22 K14 [tostring]
      162 CALL                             R22 1 1
      163 MOVE                             R16 R22
      164 GETTABLEKS                       R22 R18 K30 ["name"]
      166 JUMPIF                           R22 ; [+4]
      167 MOVE                             R22 R21
      168 JUMPIFNOT                        R22 ; [+2]
      169 GETTABLEKS                       R22 R21 K30 ["name"]
      171 MOVE                             R17 R22
      172 JUMPIF                           R17 ; [+11]
      173 JUMPIFNOT                        R16 ; [+10]
      174 JUMPIFEQKNIL                     R19 ; [+9]
      176 JUMPIFNOT                        R2 ; [+7]
      177 FASTCALL1                        TONUMBER R16 ; [+3]
      178 MOVE                             R23 R16
      179 GETIMPORT                        R22 K32 [tonumber]
      181 CALL                             R22 1 1
      182 JUMPIFNOT                        R22 ; [+1]
      183 GETTABLE                         R17 R2 R22
      184 JUMPIF                           R17 ; [+14]
      185 JUMPIFNOT                        R21 ; [+13]
      186 GETTABLEKS                       R22 R21 K28 ["groupId"]
      188 JUMPIFEQKNIL                     R22 ; [+10]
      190 JUMPIFNOT                        R2 ; [+8]
      191 GETTABLEKS                       R23 R21 K28 ["groupId"]
      193 FASTCALL1                        TONUMBER R23 ; [+2]
      194 GETIMPORT                        R22 K32 [tonumber]
      196 CALL                             R22 1 1
      197 JUMPIFNOT                        R22 ; [+1]
      198 GETTABLE                         R17 R2 R22
      199 GETUPVAL                         R19 0
      200 LOADK                            R21 K33 ["[AssetSearchTool] parseInventory item: id=%* name=\"%*\" type=%* isPackage=%* creatorId=%* creatorName=%*"]
      201 MOVE                             R23 R12
      202 GETTABLEKS                       R24 R11 K34 ["displayName"]
      204 JUMPIF                           R24 ; [+2]
      205 GETTABLEKS                       R24 R11 K30 ["name"]
      207 MOVE                             R25 R14
      208 FASTCALL1                        TOSTRING R15 ; [+3]
      209 MOVE                             R27 R15
      210 GETIMPORT                        R26 K14 [tostring]
      212 CALL                             R26 1 1
      213 ORK                              R27 R16 K35 ["nil"]
      214 ORK                              R28 R17 K35 ["nil"]
      215 NAMECALL                         R21 R21 K5 ["format"]
      217 CALL                             R21 7 1
      218 MOVE                             R20 R21
      219 CALL                             R19 1 0
      220 DUPTABLE                         R21 K43 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "isFree"}]
      221 SETTABLEKS                       R12 R21 K11 ["assetId"]
      223 GETTABLEKS                       R22 R11 K34 ["displayName"]
      225 JUMPIF                           R22 ; [+4]
      226 GETTABLEKS                       R22 R11 K30 ["name"]
      228 JUMPIF                           R22 ; [+1]
      229 LOADK                            R22 K17 ["Unknown"]
      230 SETTABLEKS                       R22 R21 K30 ["name"]
      232 LOADNIL                          R22
      233 SETTABLEKS                       R22 R21 K36 ["description"]
      235 SETTABLEKS                       R14 R21 K15 ["assetType"]
      237 GETUPVAL                         R22 4
      238 GETTABLEKS                       R22 R22 K44 ["Inventory"]
      240 SETTABLEKS                       R22 R21 K37 ["source"]
      242 SETTABLEKS                       R1 R21 K38 ["location"]
      244 SETTABLEKS                       R17 R21 K39 ["creatorName"]
      246 SETTABLEKS                       R16 R21 K40 ["creatorId"]
      248 LOADN                            R22 0
      249 SETTABLEKS                       R22 R21 K41 ["priceCents"]
      251 LOADB                            R22 1
      252 SETTABLEKS                       R22 R21 K42 ["isFree"]
      254 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
      256 MOVE                             R20 R3
      257 GETIMPORT                        R19 K46 [table.insert]
      259 CALL                             R19 2 0
      260 FORGLOOP                         R5 2 ; [-215]
      262 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K11 [{"keyword", "searchCategoryType", "limit", "facets", "tags", "isPackageFilter", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["keyword"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["searchCategoryType"]
        8 GETUPVAL                         R2 3
        9 SETTABLEKS                       R2 R1 K2 ["limit"]
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K3 ["facets"]
       14 SETTABLEKS                       R2 R1 K3 ["facets"]
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K4 ["tags"]
       19 SETTABLEKS                       R2 R1 K4 ["tags"]
       21 GETUPVAL                         R3 5
       22 GETUPVAL                         R4 6
       23 JUMPIFEQ                         R3 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 SETTABLEKS                       R2 R1 K5 ["isPackageFilter"]
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K6 ["includeOnlyVerifiedCreators"]
       32 SETTABLEKS                       R2 R1 K6 ["includeOnlyVerifiedCreators"]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K7 ["minPrice"]
       37 SETTABLEKS                       R2 R1 K7 ["minPrice"]
       39 GETUPVAL                         R2 4
       40 GETTABLEKS                       R2 R2 K8 ["maxPrice"]
       42 SETTABLEKS                       R2 R1 K8 ["maxPrice"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K9 ["minDuration"]
       47 SETTABLEKS                       R2 R1 K9 ["minDuration"]
       49 GETUPVAL                         R2 4
       50 GETTABLEKS                       R2 R2 K10 ["maxDuration"]
       52 SETTABLEKS                       R2 R1 K10 ["maxDuration"]
       54 CALL                             R0 1 -1
       55 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFEQ                         R1 R2 ; [+2]
        4 RETURN                           R0 1
        5 NEWTABLE                         R1 0 0
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K0 ["assetType"]
       13 GETUPVAL                         R8 1
       14 JUMPIFNOTEQ                      R7 R8 ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R6
       20 GETIMPORT                        R7 K3 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-13]
       25 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["makeRequest"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["makeRequest"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_23:
        0 MOVE                             R6 R5
        1 JUMPIF                           R6 ; [+1]
        2 GETUPVAL                         R6 0
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K0 ["CreatorStore"]
        6 JUMPIFNOTEQ                      R0 R7 ; [+62]
        8 LOADNIL                          R7
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R9 2
       11 GETTABLE                         R8 R9 R2
       12 JUMPIFNOT                        R8 ; [+2]
       13 GETUPVAL                         R8 2
       14 GETTABLE                         R7 R8 R2
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 LOADNIL                          R10
       18 GETIMPORT                        R11 K2 [pcall]
       20 NEWCLOSURE                       R12 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R1
       23 CAPTURE                          REF R7
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U4
       28 CALL                             R11 1 3
       29 MOVE                             R8 R11
       30 MOVE                             R9 R12
       31 MOVE                             R10 R13
       32 JUMPIF                           R8 ; [+18]
       33 GETUPVAL                         R11 5
       34 LOADK                            R13 K3 ["[AssetSearchTool] fetchCreatorStoreAssets threw: %*"]
       35 FASTCALL1                        TOSTRING R9 ; [+3]
       36 MOVE                             R16 R9
       37 GETIMPORT                        R15 K5 [tostring]
       39 CALL                             R15 1 1
       40 NAMECALL                         R13 R13 K6 ["format"]
       42 CALL                             R13 2 1
       43 MOVE                             R12 R13
       44 CALL                             R11 1 0
       45 NEWTABLE                         R11 0 0
       47 NEWTABLE                         R12 0 0
       49 CLOSEUPVALS                      R7
       50 RETURN                           R11 2
       51 GETUPVAL                         R11 6
       52 DUPTABLE                         R13 K10 [{"Results", "TotalResults", "AvailableFacets"}]
       53 SETTABLEKS                       R9 R13 K7 ["Results"]
       55 LENGTH                           R14 R9
       56 SETTABLEKS                       R14 R13 K8 ["TotalResults"]
       58 SETTABLEKS                       R10 R13 K9 ["AvailableFacets"]
       60 NAMECALL                         R11 R11 K11 ["JSONEncode"]
       62 CALL                             R11 2 1
       63 GETUPVAL                         R12 7
       64 MOVE                             R13 R11
       65 CALL                             R12 1 -1
       66 CLOSEUPVALS                      R7
       67 RETURN                           R12 -1
       68 CLOSEUPVALS                      R7
       69 GETUPVAL                         R8 8
       70 GETTABLE                         R7 R8 R0
       71 JUMPIF                           R7 ; [+5]
       72 NEWTABLE                         R8 0 0
       74 NEWTABLE                         R9 0 0
       76 RETURN                           R8 2
       77 LOADNIL                          R8
       78 JUMPIFNOT                        R2 ; [+5]
       79 GETUPVAL                         R10 9
       80 GETTABLE                         R9 R10 R2
       81 JUMPIFNOT                        R9 ; [+2]
       82 GETUPVAL                         R9 9
       83 GETTABLE                         R8 R9 R2
       84 MOVE                             R9 R8
       85 JUMPIF                           R9 ; [+1]
       86 GETUPVAL                         R9 10
       87 NEWCLOSURE                       R10 P1
       88 CAPTURE                          VAL R2
       89 CAPTURE                          UPVAL U4
       90 GETUPVAL                         R11 1
       91 GETTABLEKS                       R11 R11 K12 ["Group"]
       93 JUMPIFNOTEQ                      R0 R11 ; [+256]
       95 GETUPVAL                         R11 11
       96 MOVE                             R12 R4
       97 CALL                             R11 1 1
       98 LENGTH                           R12 R11
       99 JUMPIFNOTEQKN                    R12 K13 [0] ; [+7]
      101 NEWTABLE                         R12 0 0
      103 NEWTABLE                         R13 0 0
      105 LOADNIL                          R14
      106 RETURN                           R12 3
      107 GETTABLEKS                       R12 R6 K14 ["effectiveGroupId"]
      109 MOVE                             R13 R11
      110 JUMPIFNOT                        R12 ; [+37]
      111 NEWTABLE                         R13 0 0
      113 MOVE                             R14 R11
      114 LOADNIL                          R15
      115 LOADNIL                          R16
      116 FORGPREP                         R14
      117 GETTABLEKS                       R19 R18 K15 ["id"]
      119 JUMPIFNOTEQ                      R19 R12 ; [+9]
      121 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
      123 MOVE                             R20 R13
      124 MOVE                             R21 R18
      125 GETIMPORT                        R19 K18 [table.insert]
      127 CALL                             R19 2 0
      128 JUMP                             ; [+2]
      129 FORGLOOP                         R14 2 ; [-13]
      131 LENGTH                           R14 R13
      132 JUMPIFNOTEQKN                    R14 K13 [0] ; [+15]
      134 GETUPVAL                         R14 5
      135 LOADK                            R16 K19 ["[AssetSearchTool] group search: effectiveGroupId=%* not in user's groups"]
      136 MOVE                             R18 R12
      137 NAMECALL                         R16 R16 K6 ["format"]
      139 CALL                             R16 2 1
      140 MOVE                             R15 R16
      141 CALL                             R14 1 0
      142 NEWTABLE                         R14 0 0
      144 NEWTABLE                         R15 0 0
      146 LOADNIL                          R16
      147 RETURN                           R14 3
      148 NEWTABLE                         R14 0 0
      150 MOVE                             R15 R13
      151 LOADNIL                          R16
      152 LOADNIL                          R17
      153 FORGPREP                         R15
      154 GETTABLEKS                       R20 R19 K15 ["id"]
      156 GETTABLEKS                       R21 R19 K20 ["name"]
      158 SETTABLE                         R21 R14 R20
      159 FORGLOOP                         R15 2 ; [-6]
      161 GETTABLEKS                       R16 R6 K21 ["isAutoScope"]
      163 JUMPIFNOT                        R16 ; [+2]
      164 LOADN                            R15 1
      165 JUMP                             ; [+1]
      166 LOADN                            R15 5
      167 NEWTABLE                         R16 0 0
      169 LENGTH                           R17 R13
      170 JUMPIFNOTLT                      R15 R17 ; [+47]
      172 ADDK                             R19 R15 K22 [1]
      173 LENGTH                           R17 R13
      174 LOADN                            R18 1
      175 FORNPREP                         R17
      176 GETTABLE                         R22 R13 R19
      177 FASTCALL2                        TABLE_INSERT R16 R22 ; [+4]
      179 MOVE                             R21 R16
      180 GETIMPORT                        R20 K18 [table.insert]
      182 CALL                             R20 2 0
      183 FORNLOOP                         R17
      184 NEWTABLE                         R17 0 0
      186 LOADN                            R20 1
      187 MOVE                             R18 R15
      188 LOADN                            R19 1
      189 FORNPREP                         R18
      190 GETTABLE                         R23 R13 R20
      191 FASTCALL2                        TABLE_INSERT R17 R23 ; [+4]
      193 MOVE                             R22 R17
      194 GETIMPORT                        R21 K18 [table.insert]
      196 CALL                             R21 2 0
      197 FORNLOOP                         R18
      198 MOVE                             R13 R17
      199 GETUPVAL                         R18 5
      200 LOADK                            R20 K23 ["[AssetSearchTool] group search: capped at %*, %* groups skipped (isAutoScope=%*)"]
      201 MOVE                             R22 R15
      202 LENGTH                           R23 R16
      203 GETTABLEKS                       R26 R6 K21 ["isAutoScope"]
      205 JUMPIFEQKB                       R26 TRUE ; [+2]
      207 LOADB                            R25 0 +1
      208 LOADB                            R25 1
      209 FASTCALL1                        TOSTRING R25 ; [+2]
      210 GETIMPORT                        R24 K5 [tostring]
      212 CALL                             R24 1 1
      213 NAMECALL                         R20 R20 K6 ["format"]
      215 CALL                             R20 4 1
      216 MOVE                             R19 R20
      217 CALL                             R18 1 0
      218 GETUPVAL                         R17 6
      219 MOVE                             R19 R1
      220 NAMECALL                         R17 R17 K24 ["UrlEncode"]
      222 CALL                             R17 2 1
      223 GETUPVAL                         R18 5
      224 LOADK                            R20 K25 ["[AssetSearchTool] group search: iterating %* group calls"]
      225 LENGTH                           R22 R13
      226 NAMECALL                         R20 R20 K6 ["format"]
      228 CALL                             R20 2 1
      229 MOVE                             R19 R20
      230 CALL                             R18 1 0
      231 NEWTABLE                         R18 0 0
      233 NEWTABLE                         R19 0 0
      235 MOVE                             R20 R13
      236 LOADNIL                          R21
      237 LOADNIL                          R22
      238 FORGPREP                         R20
      239 LENGTH                           R25 R18
      240 JUMPIFLE                         R3 R25 ; [+88]
      242 GETUPVAL                         R25 12
      243 GETTABLEKS                       R25 R25 K26 ["searchCreatorInventory"]
      245 MOVE                             R26 R17
      246 MOVE                             R27 R9
      247 DUPTABLE                         R28 K29 [{"Type", "Id"}]
      248 LOADK                            R29 K12 ["Group"]
      249 SETTABLEKS                       R29 R28 K27 ["Type"]
      251 GETTABLEKS                       R29 R24 K15 ["id"]
      253 SETTABLEKS                       R29 R28 K28 ["Id"]
      255 MOVE                             R29 R3
      256 LOADK                            R30 K30 [""]
      257 CALL                             R25 5 1
      258 GETUPVAL                         R26 5
      259 LOADK                            R28 K31 ["[AssetSearchTool] group search: group=%* URL=%*"]
      260 GETTABLEKS                       R30 R24 K15 ["id"]
      262 GETTABLEKS                       R31 R25 K32 ["getUrl"]
      264 CALL                             R31 0 1
      265 NAMECALL                         R28 R28 K6 ["format"]
      267 CALL                             R28 3 1
      268 MOVE                             R27 R28
      269 CALL                             R26 1 0
      270 GETIMPORT                        R26 K2 [pcall]
      272 NEWCLOSURE                       R27 P2
      273 CAPTURE                          VAL R25
      274 CALL                             R26 1 2
      275 JUMPIFNOT                        R26 ; [+4]
      276 JUMPIFNOT                        R27 ; [+3]
      277 GETTABLEKS                       R28 R27 K33 ["responseBody"]
      279 JUMPIF                           R28 ; [+15]
      280 GETUPVAL                         R28 5
      281 LOADK                            R30 K34 ["[AssetSearchTool] group search: group=%* FAILED: %*"]
      282 GETTABLEKS                       R32 R24 K15 ["id"]
      284 FASTCALL1                        TOSTRING R27 ; [+3]
      285 MOVE                             R34 R27
      286 GETIMPORT                        R33 K5 [tostring]
      288 CALL                             R33 1 1
      289 NAMECALL                         R30 R30 K6 ["format"]
      291 CALL                             R30 3 1
      292 MOVE                             R29 R30
      293 CALL                             R28 1 0
      294 JUMP                             ; [+32]
      295 GETUPVAL                         R28 13
      296 GETTABLEKS                       R29 R27 K33 ["responseBody"]
      298 GETUPVAL                         R30 1
      299 GETTABLEKS                       R30 R30 K12 ["Group"]
      301 MOVE                             R31 R14
      302 CALL                             R28 3 1
      303 MOVE                             R29 R28
      304 LOADNIL                          R30
      305 LOADNIL                          R31
      306 FORGPREP                         R29
      307 GETTABLEKS                       R35 R33 K35 ["assetId"]
      309 GETTABLE                         R34 R19 R35
      310 JUMPIF                           R34 ; [+14]
      311 GETTABLEKS                       R34 R33 K35 ["assetId"]
      313 LOADB                            R35 1
      314 SETTABLE                         R35 R19 R34
      315 FASTCALL2                        TABLE_INSERT R18 R33 ; [+5]
      317 MOVE                             R35 R18
      318 MOVE                             R36 R33
      319 GETIMPORT                        R34 K18 [table.insert]
      321 CALL                             R34 2 0
      322 LENGTH                           R34 R18
      323 JUMPIFLE                         R3 R34 ; [+3]
      325 FORGLOOP                         R29 2 ; [-19]
      327 FORGLOOP                         R20 2 ; [-89]
      329 GETUPVAL                         R20 5
      330 LOADK                            R22 K36 ["[AssetSearchTool] group search: merged %* items"]
      331 LENGTH                           R24 R18
      332 NAMECALL                         R22 R22 K6 ["format"]
      334 CALL                             R22 2 1
      335 MOVE                             R21 R22
      336 CALL                             R20 1 0
      337 MOVE                             R20 R10
      338 MOVE                             R21 R18
      339 CALL                             R20 1 1
      340 NEWTABLE                         R21 0 0
      342 LENGTH                           R23 R16
      343 LOADN                            R24 0
      344 JUMPIFNOTLT                      R24 R23 ; [+3]
      346 MOVE                             R22 R16
      347 RETURN                           R20 3
      348 LOADNIL                          R22
      349 RETURN                           R20 3
      350 LOADNIL                          R11
      351 GETUPVAL                         R12 1
      352 GETTABLEKS                       R12 R12 K37 ["User"]
      354 JUMPIFNOTEQ                      R0 R12 ; [+4]
      356 GETTABLEKS                       R11 R4 K38 ["userId"]
      358 JUMP                             ; [+7]
      359 GETUPVAL                         R12 1
      360 GETTABLEKS                       R12 R12 K39 ["Universe"]
      362 JUMPIFNOTEQ                      R0 R12 ; [+3]
      364 GETTABLEKS                       R11 R4 K40 ["universeId"]
      366 JUMPIF                           R11 ; [+5]
      367 NEWTABLE                         R12 0 0
      369 NEWTABLE                         R13 0 0
      371 RETURN                           R12 2
      372 DUPTABLE                         R12 K29 [{"Type", "Id"}]
      373 GETUPVAL                         R14 14
      374 GETTABLE                         R13 R14 R7
      375 SETTABLEKS                       R13 R12 K27 ["Type"]
      377 FASTCALL1                        TONUMBER R11 ; [+3]
      378 MOVE                             R14 R11
      379 GETIMPORT                        R13 K42 [tonumber]
      381 CALL                             R13 1 1
      382 SETTABLEKS                       R13 R12 K28 ["Id"]
      384 GETUPVAL                         R13 12
      385 GETTABLEKS                       R13 R13 K26 ["searchCreatorInventory"]
      387 GETUPVAL                         R14 6
      388 MOVE                             R16 R1
      389 NAMECALL                         R14 R14 K24 ["UrlEncode"]
      391 CALL                             R14 2 1
      392 MOVE                             R15 R9
      393 MOVE                             R16 R12
      394 MOVE                             R17 R3
      395 LOADK                            R18 K30 [""]
      396 CALL                             R13 5 1
      397 GETUPVAL                         R14 5
      398 LOADK                            R16 K43 ["[AssetSearchTool] searchInventory: URL=%*"]
      399 GETTABLEKS                       R18 R13 K32 ["getUrl"]
      401 CALL                             R18 0 1
      402 NAMECALL                         R16 R16 K6 ["format"]
      404 CALL                             R16 2 1
      405 MOVE                             R15 R16
      406 CALL                             R14 1 0
      407 GETIMPORT                        R14 K2 [pcall]
      409 NEWCLOSURE                       R15 P3
      410 CAPTURE                          VAL R13
      411 CALL                             R14 1 2
      412 JUMPIF                           R14 ; [+17]
      413 GETUPVAL                         R16 5
      414 LOADK                            R18 K44 ["[AssetSearchTool] searchInventory: request FAILED: %*"]
      415 FASTCALL1                        TOSTRING R15 ; [+3]
      416 MOVE                             R21 R15
      417 GETIMPORT                        R20 K5 [tostring]
      419 CALL                             R20 1 1
      420 NAMECALL                         R18 R18 K6 ["format"]
      422 CALL                             R18 2 1
      423 MOVE                             R17 R18
      424 CALL                             R16 1 0
      425 NEWTABLE                         R16 0 0
      427 NEWTABLE                         R17 0 0
      429 RETURN                           R16 2
      430 GETUPVAL                         R16 5
      431 LOADK                            R17 K45 ["[AssetSearchTool] searchInventory: SUCCESS"]
      432 CALL                             R16 1 0
      433 GETUPVAL                         R16 13
      434 GETTABLEKS                       R17 R15 K33 ["responseBody"]
      436 MOVE                             R18 R0
      437 CALL                             R16 2 1
      438 MOVE                             R17 R10
      439 MOVE                             R18 R16
      440 CALL                             R17 1 1
      441 NEWTABLE                         R18 0 0
      443 RETURN                           R17 2

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["minPriceCents"]
        2 GETTABLEKS                       R2 R0 K1 ["maxPriceCents"]
        4 GETTABLEKS                       R3 R0 K2 ["priceFilter"]
        6 JUMPIFNOTEQKS                    R3 K3 ["free"] ; [+3]
        8 LOADN                            R2 0
        9 RETURN                           R1 2
       10 GETTABLEKS                       R3 R0 K2 ["priceFilter"]
       12 JUMPIFNOTEQKS                    R3 K4 ["paid"] ; [+2]
       14 ORK                              R1 R1 K5 [1]
       15 RETURN                           R1 2

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K5 [{"type", "mode", "query", "assetType"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K6 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["Modes"]
       13 GETTABLEKS                       R4 R4 K8 ["Searching"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["assetType"]
       23 SETTABLEKS                       R4 R3 K4 ["assetType"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K9 [{"type", "mode", "query", "assetType", "searchId", "resultCount", "results", "expanded"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K10 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K11 ["Modes"]
       13 GETTABLEKS                       R4 R4 K12 ["Results"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["assetType"]
       23 SETTABLEKS                       R4 R3 K4 ["assetType"]
       25 GETUPVAL                         R4 4
       26 LOADB                            R6 0
       27 NAMECALL                         R4 R4 K13 ["GenerateGUID"]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K5 ["searchId"]
       32 LOADN                            R4 0
       33 SETTABLEKS                       R4 R3 K6 ["resultCount"]
       35 NEWTABLE                         R4 0 0
       37 SETTABLEKS                       R4 R3 K7 ["results"]
       39 LOADB                            R4 1
       40 SETTABLEKS                       R4 R3 K8 ["expanded"]
       42 CALL                             R1 2 0
       43 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateWidget"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K10 [{"type", "mode", "query", "assetType", "searchId", "resultCount", "results", "expanded", "onItemClicked"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K11 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K12 ["Modes"]
       13 GETTABLEKS                       R4 R4 K13 ["Results"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["assetType"]
       23 SETTABLEKS                       R4 R3 K4 ["assetType"]
       25 GETUPVAL                         R4 4
       26 SETTABLEKS                       R4 R3 K5 ["searchId"]
       28 GETUPVAL                         R5 5
       29 LENGTH                           R4 R5
       30 SETTABLEKS                       R4 R3 K6 ["resultCount"]
       32 GETUPVAL                         R4 6
       33 SETTABLEKS                       R4 R3 K7 ["results"]
       35 LOADB                            R4 1
       36 SETTABLEKS                       R4 R3 K8 ["expanded"]
       38 GETUPVAL                         R4 7
       39 SETTABLEKS                       R4 R3 K9 ["onItemClicked"]
       41 CALL                             R1 2 0
       42 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R4 R1 K1 ["query"]
        2 ORK                              R3 R4 K0 [""]
        3 GETTABLEKS                       R5 R1 K3 ["scope"]
        5 ORK                              R4 R5 K2 ["auto"]
        6 GETTABLEKS                       R7 R1 K5 ["maxResults"]
        8 ORK                              R6 R7 K4 [5]
        9 LOADN                            R7 1
       10 LOADN                            R8 20
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R5 K8 [math.clamp]
       14 CALL                             R5 3 1
       15 GETTABLEKS                       R6 R0 K9 ["toolArgs"]
       17 GETTABLEKS                       R6 R6 K10 ["environment"]
       19 GETUPVAL                         R7 0
       20 LOADK                            R9 K11 ["[AssetSearchTool] === SEARCH START === query=\"%*\" scope=%* maxResults=%* assetType=%*"]
       21 MOVE                             R11 R3
       22 MOVE                             R12 R4
       23 MOVE                             R13 R5
       24 GETTABLEKS                       R15 R1 K13 ["assetType"]
       26 ORK                              R14 R15 K12 ["nil"]
       27 NAMECALL                         R9 R9 K14 ["format"]
       29 CALL                             R9 5 1
       30 MOVE                             R8 R9
       31 CALL                             R7 1 0
       32 GETUPVAL                         R8 1
       33 GETTABLE                         R7 R8 R4
       34 JUMPIF                           R7 ; [+24]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       37 LOADK                            R10 K16 ["error"]
       38 SETTABLEKS                       R10 R9 K15 ["status"]
       40 LOADK                            R11 K19 ["Invalid scope: \"%*\". Must be one of: auto, creator_store, user, group, universe"]
       41 MOVE                             R13 R4
       42 NAMECALL                         R11 R11 K14 ["format"]
       44 CALL                             R11 2 1
       45 MOVE                             R10 R11
       46 SETTABLEKS                       R10 R9 K16 ["error"]
       48 NEWTABLE                         R10 0 1
       50 LOADK                            R11 K20 ["Use one of the valid scope values: auto, creator_store, user, group, universe"]
       51 SETLIST                          R10 R11 1 [1]
       53 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
       55 NAMECALL                         R7 R7 K21 ["JSONEncode"]
       57 CALL                             R7 2 -1
       58 RETURN                           R7 -1
       59 GETTABLEKS                       R7 R1 K22 ["includeSources"]
       61 JUMPIFNOT                        R7 ; [+22]
       62 GETTABLEKS                       R7 R1 K23 ["excludeSources"]
       64 JUMPIFNOT                        R7 ; [+19]
       65 GETUPVAL                         R7 2
       66 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       67 LOADK                            R10 K16 ["error"]
       68 SETTABLEKS                       R10 R9 K15 ["status"]
       70 LOADK                            R10 K24 ["Cannot provide both includeSources and excludeSources"]
       71 SETTABLEKS                       R10 R9 K16 ["error"]
       73 NEWTABLE                         R10 0 1
       75 LOADK                            R11 K25 ["Use either includeSources OR excludeSources, not both"]
       76 SETLIST                          R10 R11 1 [1]
       78 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
       80 NAMECALL                         R7 R7 K21 ["JSONEncode"]
       82 CALL                             R7 2 -1
       83 RETURN                           R7 -1
       84 JUMPIFEQKS                       R4 K2 ["auto"] ; [+31]
       86 GETTABLEKS                       R7 R1 K22 ["includeSources"]
       88 JUMPIF                           R7 ; [+3]
       89 GETTABLEKS                       R7 R1 K23 ["excludeSources"]
       91 JUMPIFNOT                        R7 ; [+24]
       92 GETUPVAL                         R7 2
       93 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       94 LOADK                            R10 K16 ["error"]
       95 SETTABLEKS                       R10 R9 K15 ["status"]
       97 LOADK                            R11 K26 ["includeSources and excludeSources only apply when scope is \"auto\", but scope is \"%*\""]
       98 MOVE                             R13 R4
       99 NAMECALL                         R11 R11 K14 ["format"]
      101 CALL                             R11 2 1
      102 MOVE                             R10 R11
      103 SETTABLEKS                       R10 R9 K16 ["error"]
      105 NEWTABLE                         R10 0 1
      107 LOADK                            R11 K27 ["Remove includeSources/excludeSources, or change scope to 'auto'"]
      108 SETLIST                          R10 R11 1 [1]
      110 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
      112 NAMECALL                         R7 R7 K21 ["JSONEncode"]
      114 CALL                             R7 2 -1
      115 RETURN                           R7 -1
      116 GETUPVAL                         R7 3
      117 GETTABLEKS                       R7 R7 K28 ["getWidgetUpdateFunctions"]
      119 MOVE                             R8 R0
      120 LOADK                            R9 K29 ["AssetSearchTool"]
      121 CALL                             R7 2 1
      122 GETTABLEKS                       R8 R7 K30 ["updateWidget"]
      124 NEWCLOSURE                       R9 P0
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R1
      129 CALL                             R8 1 0
      130 NEWCLOSURE                       R8 P1
      131 CAPTURE                          VAL R7
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U5
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R1
      136 CAPTURE                          UPVAL U2
      137 GETUPVAL                         R9 0
      138 LOADK                            R10 K31 ["[AssetSearchTool] Discovering context..."]
      139 CALL                             R9 1 0
      140 GETIMPORT                        R9 K33 [pcall]
      142 NEWCLOSURE                       R10 P2
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          VAL R6
      145 CALL                             R9 1 2
      146 JUMPIF                           R9 ; [+40]
      147 GETUPVAL                         R11 0
      148 LOADK                            R13 K34 ["[AssetSearchTool] discoverContext threw: %*"]
      149 FASTCALL1                        TOSTRING R10 ; [+3]
      150 MOVE                             R16 R10
      151 GETIMPORT                        R15 K36 [tostring]
      153 CALL                             R15 1 1
      154 NAMECALL                         R13 R13 K14 ["format"]
      156 CALL                             R13 2 1
      157 MOVE                             R12 R13
      158 CALL                             R11 1 0
      159 GETTABLEKS                       R11 R7 K30 ["updateWidget"]
      161 NEWCLOSURE                       R12 P3
      162 CAPTURE                          UPVAL U4
      163 CAPTURE                          UPVAL U5
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R1
      166 CAPTURE                          UPVAL U2
      167 CALL                             R11 1 0
      168 GETUPVAL                         R11 2
      169 DUPTABLE                         R13 K18 [{"status", "error", "nextSteps"}]
      170 LOADK                            R14 K16 ["error"]
      171 SETTABLEKS                       R14 R13 K15 ["status"]
      173 LOADK                            R14 K37 ["Failed to discover Studio context"]
      174 SETTABLEKS                       R14 R13 K16 ["error"]
      176 NEWTABLE                         R14 0 1
      178 LOADK                            R15 K38 ["Retry the search. If this persists, the Studio session may need to be restarted"]
      179 SETLIST                          R14 R15 1 [1]
      181 SETTABLEKS                       R14 R13 K17 ["nextSteps"]
      183 NAMECALL                         R11 R11 K21 ["JSONEncode"]
      185 CALL                             R11 2 -1
      186 RETURN                           R11 -1
      187 GETUPVAL                         R11 0
      188 LOADK                            R13 K39 ["[AssetSearchTool] Context: userId=%* universeId=%* groupId=%*"]
      189 GETTABLEKS                       R15 R10 K40 ["userId"]
      191 GETTABLEKS                       R17 R10 K41 ["universeId"]
      193 ORK                              R16 R17 K12 ["nil"]
      194 GETTABLEKS                       R18 R10 K42 ["groupId"]
      196 ORK                              R17 R18 K12 ["nil"]
      197 NAMECALL                         R13 R13 K14 ["format"]
      199 CALL                             R13 4 1
      200 MOVE                             R12 R13
      201 CALL                             R11 1 0
      202 LOADNIL                          R11
      203 GETTABLEKS                       R12 R1 K42 ["groupId"]
      205 JUMPIF                           R12 ; [+3]
      206 GETTABLEKS                       R12 R1 K43 ["groupName"]
      208 JUMPIFNOT                        R12 ; [+35]
      209 GETUPVAL                         R12 7
      210 MOVE                             R13 R10
      211 CALL                             R12 1 1
      212 LOADNIL                          R13
      213 GETUPVAL                         R14 8
      214 MOVE                             R15 R1
      215 MOVE                             R16 R4
      216 MOVE                             R17 R12
      217 CALL                             R14 3 2
      218 MOVE                             R11 R14
      219 MOVE                             R13 R15
      220 JUMPIFNOT                        R13 ; [+15]
      221 GETTABLEKS                       R14 R7 K30 ["updateWidget"]
      223 NEWCLOSURE                       R15 P3
      224 CAPTURE                          UPVAL U4
      225 CAPTURE                          UPVAL U5
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R1
      228 CAPTURE                          UPVAL U2
      229 CALL                             R14 1 0
      230 GETUPVAL                         R14 2
      231 MOVE                             R16 R13
      232 NAMECALL                         R14 R14 K21 ["JSONEncode"]
      234 CALL                             R14 2 -1
      235 RETURN                           R14 -1
      236 GETUPVAL                         R14 0
      237 LOADK                            R16 K44 ["[AssetSearchTool] effectiveGroupId=%*"]
      238 ORK                              R18 R11 K12 ["nil"]
      239 NAMECALL                         R16 R16 K14 ["format"]
      241 CALL                             R16 2 1
      242 MOVE                             R15 R16
      243 CALL                             R14 1 0
      244 NEWTABLE                         R12 0 0
      246 NEWTABLE                         R13 0 0
      248 NEWTABLE                         R14 0 0
      250 NEWTABLE                         R15 0 0
      252 LOADNIL                          R16
      253 JUMPIFNOTEQKS                    R4 K2 ["auto"] ; [+263]
      255 NEWTABLE                         R17 0 4
      257 GETUPVAL                         R18 9
      258 GETTABLEKS                       R18 R18 K45 ["User"]
      260 GETUPVAL                         R19 9
      261 GETTABLEKS                       R19 R19 K46 ["Group"]
      263 GETUPVAL                         R20 9
      264 GETTABLEKS                       R20 R20 K47 ["Universe"]
      266 GETUPVAL                         R21 9
      267 GETTABLEKS                       R21 R21 K48 ["CreatorStore"]
      269 SETLIST                          R17 R18 4 [1]
      271 GETTABLEKS                       R18 R1 K22 ["includeSources"]
      273 JUMPIFNOT                        R18 ; [+17]
      274 NEWTABLE                         R17 0 0
      276 GETTABLEKS                       R18 R1 K22 ["includeSources"]
      278 LOADNIL                          R19
      279 LOADNIL                          R20
      280 FORGPREP                         R18
      281 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      283 MOVE                             R24 R17
      284 MOVE                             R25 R22
      285 GETIMPORT                        R23 K51 [table.insert]
      287 CALL                             R23 2 0
      288 FORGLOOP                         R18 2 ; [-8]
      290 JUMP                             ; [+32]
      291 GETTABLEKS                       R18 R1 K23 ["excludeSources"]
      293 JUMPIFNOT                        R18 ; [+29]
      294 NEWTABLE                         R18 0 0
      296 GETTABLEKS                       R19 R1 K23 ["excludeSources"]
      298 LOADNIL                          R20
      299 LOADNIL                          R21
      300 FORGPREP                         R19
      301 LOADB                            R24 1
      302 SETTABLE                         R24 R18 R23
      303 FORGLOOP                         R19 2 ; [-3]
      305 NEWTABLE                         R19 0 0
      307 MOVE                             R20 R17
      308 LOADNIL                          R21
      309 LOADNIL                          R22
      310 FORGPREP                         R20
      311 GETTABLE                         R25 R18 R24
      312 JUMPIF                           R25 ; [+7]
      313 FASTCALL2                        TABLE_INSERT R19 R24 ; [+5]
      315 MOVE                             R26 R19
      316 MOVE                             R27 R24
      317 GETIMPORT                        R25 K51 [table.insert]
      319 CALL                             R25 2 0
      320 FORGLOOP                         R20 2 ; [-10]
      322 MOVE                             R17 R19
      323 GETUPVAL                         R18 0
      324 LOADK                            R20 K52 ["[AssetSearchTool] Auto waterfall sourceOrder: %*"]
      325 GETIMPORT                        R22 K54 [table.concat]
      327 MOVE                             R23 R17
      328 LOADK                            R24 K55 [", "]
      329 CALL                             R22 2 1
      330 NAMECALL                         R20 R20 K14 ["format"]
      332 CALL                             R20 2 1
      333 MOVE                             R19 R20
      334 CALL                             R18 1 0
      335 NEWTABLE                         R18 0 0
      337 GETTABLEKS                       R21 R1 K56 ["minPriceCents"]
      339 GETTABLEKS                       R22 R1 K57 ["maxPriceCents"]
      341 GETTABLEKS                       R23 R1 K58 ["priceFilter"]
      343 JUMPIFNOTEQKS                    R23 K59 ["free"] ; [+3]
      345 LOADN                            R22 0
      346 JUMP                             ; [+5]
      347 GETTABLEKS                       R23 R1 K58 ["priceFilter"]
      349 JUMPIFNOTEQKS                    R23 K60 ["paid"] ; [+2]
      351 ORK                              R21 R21 K61 [1]
      352 MOVE                             R19 R21
      353 MOVE                             R20 R22
      354 MOVE                             R21 R17
      355 LOADNIL                          R22
      356 LOADNIL                          R23
      357 FORGPREP                         R21
      358 LENGTH                           R26 R12
      359 JUMPIFNOTLE                      R5 R26 ; [+10]
      361 GETUPVAL                         R26 0
      362 LOADK                            R28 K62 ["[AssetSearchTool] Waterfall: reached maxResults=%*, stopping"]
      363 MOVE                             R30 R5
      364 NAMECALL                         R28 R28 K14 ["format"]
      366 CALL                             R28 2 1
      367 MOVE                             R27 R28
      368 CALL                             R26 1 0
      369 JUMP                             ; [+351]
      370 GETUPVAL                         R26 9
      371 GETTABLEKS                       R26 R26 K46 ["Group"]
      373 JUMPIFNOTEQ                      R25 R26 ; [+16]
      375 GETUPVAL                         R26 7
      376 MOVE                             R27 R10
      377 CALL                             R26 1 1
      378 LENGTH                           R27 R26
      379 JUMPIFNOTEQKN                    R27 K63 [0] ; [+10]
      381 GETUPVAL                         R27 0
      382 LOADK                            R28 K64 ["[AssetSearchTool] Waterfall: skipping \"group\" (user is in no groups)"]
      383 CALL                             R27 1 0
      384 GETUPVAL                         R27 9
      385 GETTABLEKS                       R27 R27 K46 ["Group"]
      387 LOADK                            R28 K65 ["user is not a member of any groups"]
      388 SETTABLE                         R28 R15 R27
      389 JUMP                             ; [+124]
      390 GETUPVAL                         R26 9
      391 GETTABLEKS                       R26 R26 K47 ["Universe"]
      393 JUMPIFNOTEQ                      R25 R26 ; [+13]
      395 GETTABLEKS                       R26 R10 K41 ["universeId"]
      397 JUMPIF                           R26 ; [+9]
      398 GETUPVAL                         R26 0
      399 LOADK                            R27 K66 ["[AssetSearchTool] Waterfall: skipping \"universe\" (no universeId)"]
      400 CALL                             R26 1 0
      401 GETUPVAL                         R26 9
      402 GETTABLEKS                       R26 R26 K47 ["Universe"]
      404 LOADK                            R27 K67 ["game is not published"]
      405 SETTABLE                         R27 R15 R26
      406 JUMP                             ; [+107]
      407 LENGTH                           R27 R12
      408 SUB                              R26 R5 R27
      409 MOVE                             R27 R26
      410 GETTABLEKS                       R28 R1 K13 ["assetType"]
      412 GETUPVAL                         R29 10
      413 JUMPIFNOTEQ                      R28 R29 ; [+7]
      415 GETUPVAL                         R28 9
      416 GETTABLEKS                       R28 R28 K48 ["CreatorStore"]
      418 JUMPIFEQ                         R25 R28 ; [+2]
      420 MULK                             R27 R26 K4 [5]
      421 GETUPVAL                         R28 0
      422 LOADK                            R30 K68 ["[AssetSearchTool] Waterfall: querying source=\"%*\" remaining=%* requestLimit=%*"]
      423 MOVE                             R32 R25
      424 MOVE                             R33 R26
      425 MOVE                             R34 R27
      426 NAMECALL                         R30 R30 K14 ["format"]
      428 CALL                             R30 4 1
      429 MOVE                             R29 R30
      430 CALL                             R28 1 0
      431 GETUPVAL                         R28 11
      432 MOVE                             R29 R25
      433 MOVE                             R30 R3
      434 GETTABLEKS                       R31 R1 K13 ["assetType"]
      436 MOVE                             R32 R27
      437 MOVE                             R33 R10
      438 DUPTABLE                         R34 K77 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration", "isAutoScope"}]
      439 GETTABLEKS                       R35 R1 K69 ["facets"]
      441 SETTABLEKS                       R35 R34 K69 ["facets"]
      443 GETTABLEKS                       R35 R1 K70 ["tags"]
      445 SETTABLEKS                       R35 R34 K70 ["tags"]
      447 GETTABLEKS                       R35 R1 K78 ["verifiedCreatorsOnly"]
      449 SETTABLEKS                       R35 R34 K71 ["includeOnlyVerifiedCreators"]
      451 SETTABLEKS                       R19 R34 K72 ["minPrice"]
      453 SETTABLEKS                       R20 R34 K73 ["maxPrice"]
      455 GETTABLEKS                       R35 R1 K79 ["audioMinDuration"]
      457 SETTABLEKS                       R35 R34 K74 ["minDuration"]
      459 GETTABLEKS                       R35 R1 K80 ["audioMaxDuration"]
      461 SETTABLEKS                       R35 R34 K75 ["maxDuration"]
      463 LOADB                            R35 1
      464 SETTABLEKS                       R35 R34 K76 ["isAutoScope"]
      466 CALL                             R28 6 3
      467 GETUPVAL                         R31 0
      468 LOADK                            R33 K81 ["[AssetSearchTool] Waterfall: source=\"%*\" returned %* results"]
      469 MOVE                             R35 R25
      470 LENGTH                           R36 R28
      471 NAMECALL                         R33 R33 K14 ["format"]
      473 CALL                             R33 3 1
      474 MOVE                             R32 R33
      475 CALL                             R31 1 0
      476 LENGTH                           R31 R29
      477 LOADN                            R32 0
      478 JUMPIFNOTLT                      R32 R31 ; [+2]
      480 MOVE                             R13 R29
      481 JUMPIFNOT                        R30 ; [+1]
      482 MOVE                             R16 R30
      483 MOVE                             R31 R28
      484 LOADNIL                          R32
      485 LOADNIL                          R33
      486 FORGPREP                         R31
      487 LENGTH                           R36 R12
      488 JUMPIFLE                         R5 R36 ; [+18]
      490 GETTABLEKS                       R37 R35 K82 ["assetId"]
      492 GETTABLE                         R36 R18 R37
      493 JUMPIF                           R36 ; [+11]
      494 GETTABLEKS                       R36 R35 K82 ["assetId"]
      496 LOADB                            R37 1
      497 SETTABLE                         R37 R18 R36
      498 FASTCALL2                        TABLE_INSERT R12 R35 ; [+5]
      500 MOVE                             R37 R12
      501 MOVE                             R38 R35
      502 GETIMPORT                        R36 K51 [table.insert]
      504 CALL                             R36 2 0
      505 FORGLOOP                         R31 2 ; [-19]
      507 FASTCALL2                        TABLE_INSERT R14 R25 ; [+5]
      509 MOVE                             R32 R14
      510 MOVE                             R33 R25
      511 GETIMPORT                        R31 K51 [table.insert]
      513 CALL                             R31 2 0
      514 FORGLOOP                         R21 2 ; [-157]
      516 JUMP                             ; [+204]
      517 GETUPVAL                         R17 9
      518 GETTABLEKS                       R17 R17 K46 ["Group"]
      520 JUMPIFNOTEQ                      R4 R17 ; [+36]
      522 GETUPVAL                         R17 7
      523 MOVE                             R18 R10
      524 CALL                             R17 1 1
      525 LENGTH                           R18 R17
      526 JUMPIFNOTEQKN                    R18 K63 [0] ; [+30]
      528 GETTABLEKS                       R18 R7 K30 ["updateWidget"]
      530 NEWCLOSURE                       R19 P3
      531 CAPTURE                          UPVAL U4
      532 CAPTURE                          UPVAL U5
      533 CAPTURE                          VAL R3
      534 CAPTURE                          VAL R1
      535 CAPTURE                          UPVAL U2
      536 CALL                             R18 1 0
      537 GETUPVAL                         R18 2
      538 DUPTABLE                         R20 K18 [{"status", "error", "nextSteps"}]
      539 LOADK                            R21 K16 ["error"]
      540 SETTABLEKS                       R21 R20 K15 ["status"]
      542 LOADK                            R21 K83 ["scope='group' is unavailable because you are not a member of any groups."]
      543 SETTABLEKS                       R21 R20 K16 ["error"]
      545 NEWTABLE                         R21 0 1
      547 LOADK                            R22 K84 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      548 SETLIST                          R21 R22 1 [1]
      550 SETTABLEKS                       R21 R20 K17 ["nextSteps"]
      552 NAMECALL                         R18 R18 K21 ["JSONEncode"]
      554 CALL                             R18 2 -1
      555 CLOSEUPVALS                      R12
      556 RETURN                           R18 -1
      557 GETUPVAL                         R17 9
      558 GETTABLEKS                       R17 R17 K47 ["Universe"]
      560 JUMPIFNOTEQ                      R4 R17 ; [+34]
      562 GETTABLEKS                       R17 R10 K41 ["universeId"]
      564 JUMPIF                           R17 ; [+30]
      565 GETTABLEKS                       R17 R7 K30 ["updateWidget"]
      567 NEWCLOSURE                       R18 P3
      568 CAPTURE                          UPVAL U4
      569 CAPTURE                          UPVAL U5
      570 CAPTURE                          VAL R3
      571 CAPTURE                          VAL R1
      572 CAPTURE                          UPVAL U2
      573 CALL                             R17 1 0
      574 GETUPVAL                         R17 2
      575 DUPTABLE                         R19 K18 [{"status", "error", "nextSteps"}]
      576 LOADK                            R20 K16 ["error"]
      577 SETTABLEKS                       R20 R19 K15 ["status"]
      579 LOADK                            R20 K85 ["scope='universe' is unavailable because this game is not yet published (no universe ID)."]
      580 SETTABLEKS                       R20 R19 K16 ["error"]
      582 NEWTABLE                         R20 0 2
      584 LOADK                            R21 K84 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      585 LOADK                            R22 K86 ["The game must be published to Roblox before its universe inventory becomes searchable."]
      586 SETLIST                          R20 R21 2 [1]
      588 SETTABLEKS                       R20 R19 K17 ["nextSteps"]
      590 NAMECALL                         R17 R17 K21 ["JSONEncode"]
      592 CALL                             R17 2 -1
      593 CLOSEUPVALS                      R12
      594 RETURN                           R17 -1
      595 GETUPVAL                         R17 0
      596 LOADK                            R19 K87 ["[AssetSearchTool] Explicit scope=\"%*\""]
      597 MOVE                             R21 R4
      598 NAMECALL                         R19 R19 K14 ["format"]
      600 CALL                             R19 2 1
      601 MOVE                             R18 R19
      602 CALL                             R17 1 0
      603 FASTCALL2                        TABLE_INSERT R14 R4 ; [+5]
      605 MOVE                             R18 R14
      606 MOVE                             R19 R4
      607 GETIMPORT                        R17 K51 [table.insert]
      609 CALL                             R17 2 0
      610 GETUPVAL                         R17 9
      611 GETTABLEKS                       R17 R17 K48 ["CreatorStore"]
      613 JUMPIFNOTEQ                      R4 R17 ; [+68]
      615 GETTABLEKS                       R19 R1 K56 ["minPriceCents"]
      617 GETTABLEKS                       R20 R1 K57 ["maxPriceCents"]
      619 GETTABLEKS                       R21 R1 K58 ["priceFilter"]
      621 JUMPIFNOTEQKS                    R21 K59 ["free"] ; [+3]
      623 LOADN                            R20 0
      624 JUMP                             ; [+5]
      625 GETTABLEKS                       R21 R1 K58 ["priceFilter"]
      627 JUMPIFNOTEQKS                    R21 K60 ["paid"] ; [+2]
      629 ORK                              R19 R19 K61 [1]
      630 MOVE                             R17 R19
      631 MOVE                             R18 R20
      632 GETUPVAL                         R19 11
      633 GETUPVAL                         R20 9
      634 GETTABLEKS                       R20 R20 K48 ["CreatorStore"]
      636 MOVE                             R21 R3
      637 GETTABLEKS                       R22 R1 K13 ["assetType"]
      639 MOVE                             R23 R5
      640 MOVE                             R24 R10
      641 DUPTABLE                         R25 K88 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      642 GETTABLEKS                       R26 R1 K69 ["facets"]
      644 SETTABLEKS                       R26 R25 K69 ["facets"]
      646 GETTABLEKS                       R26 R1 K70 ["tags"]
      648 SETTABLEKS                       R26 R25 K70 ["tags"]
      650 GETTABLEKS                       R26 R1 K78 ["verifiedCreatorsOnly"]
      652 SETTABLEKS                       R26 R25 K71 ["includeOnlyVerifiedCreators"]
      654 SETTABLEKS                       R17 R25 K72 ["minPrice"]
      656 SETTABLEKS                       R18 R25 K73 ["maxPrice"]
      658 GETTABLEKS                       R26 R1 K79 ["audioMinDuration"]
      660 SETTABLEKS                       R26 R25 K74 ["minDuration"]
      662 GETTABLEKS                       R26 R1 K80 ["audioMaxDuration"]
      664 SETTABLEKS                       R26 R25 K75 ["maxDuration"]
      666 CALL                             R19 6 2
      667 MOVE                             R12 R19
      668 LENGTH                           R21 R20
      669 LOADN                            R22 0
      670 JUMPIFNOTLT                      R22 R21 ; [+2]
      672 MOVE                             R13 R20
      673 GETUPVAL                         R21 0
      674 LOADK                            R23 K89 ["[AssetSearchTool] Explicit creator_store: parsed %* results"]
      675 LENGTH                           R25 R12
      676 NAMECALL                         R23 R23 K14 ["format"]
      678 CALL                             R23 2 1
      679 MOVE                             R22 R23
      680 CALL                             R21 1 0
      681 JUMP                             ; [+39]
      682 GETTABLEKS                       R18 R1 K13 ["assetType"]
      684 GETUPVAL                         R19 10
      685 JUMPIFNOTEQ                      R18 R19 ; [+3]
      687 MULK                             R17 R5 K4 [5]
      688 JUMP                             ; [+1]
      689 MOVE                             R17 R5
      690 GETUPVAL                         R18 11
      691 MOVE                             R19 R4
      692 MOVE                             R20 R3
      693 GETTABLEKS                       R21 R1 K13 ["assetType"]
      695 MOVE                             R22 R17
      696 MOVE                             R23 R10
      697 DUPTABLE                         R24 K91 [{"effectiveGroupId", "isAutoScope"}]
      698 SETTABLEKS                       R11 R24 K90 ["effectiveGroupId"]
      700 LOADB                            R25 0
      701 SETTABLEKS                       R25 R24 K76 ["isAutoScope"]
      703 CALL                             R18 6 3
      704 MOVE                             R12 R18
      705 LENGTH                           R21 R19
      706 LOADN                            R22 0
      707 JUMPIFNOTLT                      R22 R21 ; [+2]
      709 MOVE                             R13 R19
      710 JUMPIFNOT                        R20 ; [+1]
      711 MOVE                             R16 R20
      712 GETUPVAL                         R21 0
      713 LOADK                            R23 K92 ["[AssetSearchTool] Explicit %*: got %* results"]
      714 MOVE                             R25 R4
      715 LENGTH                           R26 R12
      716 NAMECALL                         R23 R23 K14 ["format"]
      718 CALL                             R23 3 1
      719 MOVE                             R22 R23
      720 CALL                             R21 1 0
      721 GETUPVAL                         R17 0
      722 LOADK                            R19 K93 ["[AssetSearchTool] Total: %* results from sources: %*"]
      723 LENGTH                           R21 R12
      724 GETIMPORT                        R22 K54 [table.concat]
      726 MOVE                             R23 R14
      727 LOADK                            R24 K55 [", "]
      728 CALL                             R22 2 1
      729 NAMECALL                         R19 R19 K14 ["format"]
      731 CALL                             R19 3 1
      732 MOVE                             R18 R19
      733 CALL                             R17 1 0
      734 NEWTABLE                         R17 0 0
      736 NEWTABLE                         R18 0 0
      738 MOVE                             R19 R12
      739 LOADNIL                          R20
      740 LOADNIL                          R21
      741 FORGPREP                         R19
      742 GETTABLEKS                       R25 R23 K82 ["assetId"]
      744 GETTABLE                         R24 R17 R25
      745 JUMPIF                           R24 ; [+14]
      746 GETTABLEKS                       R24 R23 K82 ["assetId"]
      748 LOADB                            R25 1
      749 SETTABLE                         R25 R17 R24
      750 FASTCALL2                        TABLE_INSERT R18 R23 ; [+5]
      752 MOVE                             R25 R18
      753 MOVE                             R26 R23
      754 GETIMPORT                        R24 K51 [table.insert]
      756 CALL                             R24 2 0
      757 LENGTH                           R24 R18
      758 JUMPIFLE                         R5 R24 ; [+3]
      760 FORGLOOP                         R19 2 ; [-19]
      762 MOVE                             R12 R18
      763 GETUPVAL                         R19 2
      764 LOADB                            R21 0
      765 NAMECALL                         R19 R19 K94 ["GenerateGUID"]
      767 CALL                             R19 2 1
      768 NEWTABLE                         R20 0 0
      770 MOVE                             R21 R12
      771 LOADNIL                          R22
      772 LOADNIL                          R23
      773 FORGPREP                         R21
      774 DUPTABLE                         R28 K101 [{"assetId", "name", "assetType", "source", "location", "priceCents", "priceLabel", "isFree"}]
      775 GETTABLEKS                       R29 R25 K82 ["assetId"]
      777 SETTABLEKS                       R29 R28 K82 ["assetId"]
      779 GETTABLEKS                       R29 R25 K95 ["name"]
      781 SETTABLEKS                       R29 R28 K95 ["name"]
      783 GETTABLEKS                       R29 R25 K13 ["assetType"]
      785 SETTABLEKS                       R29 R28 K13 ["assetType"]
      787 GETTABLEKS                       R29 R25 K96 ["source"]
      789 SETTABLEKS                       R29 R28 K96 ["source"]
      791 GETTABLEKS                       R29 R25 K97 ["location"]
      793 SETTABLEKS                       R29 R28 K97 ["location"]
      795 GETTABLEKS                       R29 R25 K98 ["priceCents"]
      797 SETTABLEKS                       R29 R28 K98 ["priceCents"]
      799 GETTABLEKS                       R29 R25 K99 ["priceLabel"]
      801 SETTABLEKS                       R29 R28 K99 ["priceLabel"]
      803 GETTABLEKS                       R29 R25 K100 ["isFree"]
      805 SETTABLEKS                       R29 R28 K100 ["isFree"]
      807 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      809 MOVE                             R27 R20
      810 GETIMPORT                        R26 K51 [table.insert]
      812 CALL                             R26 2 0
      813 FORGLOOP                         R21 2 ; [-40]
      815 NEWCLOSURE                       R21 P4
      816 CAPTURE                          VAL R0
      817 GETTABLEKS                       R22 R7 K30 ["updateWidget"]
      819 NEWCLOSURE                       R23 P5
      820 CAPTURE                          UPVAL U4
      821 CAPTURE                          UPVAL U5
      822 CAPTURE                          VAL R3
      823 CAPTURE                          VAL R1
      824 CAPTURE                          VAL R19
      825 CAPTURE                          REF R12
      826 CAPTURE                          VAL R20
      827 CAPTURE                          VAL R21
      828 CALL                             R22 1 0
      829 NEWTABLE                         R22 0 0
      831 MOVE                             R23 R12
      832 LOADNIL                          R24
      833 LOADNIL                          R25
      834 FORGPREP                         R23
      835 DUPTABLE                         R30 K107 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "priceLabel", "isFree", "thumbnailUrl", "creatorStoreUrl"}]
      836 GETTABLEKS                       R31 R27 K82 ["assetId"]
      838 SETTABLEKS                       R31 R30 K82 ["assetId"]
      840 GETTABLEKS                       R31 R27 K95 ["name"]
      842 SETTABLEKS                       R31 R30 K95 ["name"]
      844 GETTABLEKS                       R31 R27 K102 ["description"]
      846 SETTABLEKS                       R31 R30 K102 ["description"]
      848 GETTABLEKS                       R31 R27 K13 ["assetType"]
      850 SETTABLEKS                       R31 R30 K13 ["assetType"]
      852 GETTABLEKS                       R31 R27 K96 ["source"]
      854 SETTABLEKS                       R31 R30 K96 ["source"]
      856 GETTABLEKS                       R31 R27 K97 ["location"]
      858 SETTABLEKS                       R31 R30 K97 ["location"]
      860 GETTABLEKS                       R31 R27 K103 ["creatorName"]
      862 SETTABLEKS                       R31 R30 K103 ["creatorName"]
      864 GETTABLEKS                       R31 R27 K104 ["creatorId"]
      866 SETTABLEKS                       R31 R30 K104 ["creatorId"]
      868 GETTABLEKS                       R31 R27 K98 ["priceCents"]
      870 SETTABLEKS                       R31 R30 K98 ["priceCents"]
      872 GETTABLEKS                       R31 R27 K99 ["priceLabel"]
      874 SETTABLEKS                       R31 R30 K99 ["priceLabel"]
      876 GETTABLEKS                       R31 R27 K100 ["isFree"]
      878 SETTABLEKS                       R31 R30 K100 ["isFree"]
      880 LOADK                            R32 K108 ["%*v1/assets?assetIds=%*&returnPolicy=PlaceHolder&size=150x150&format=Png"]
      881 GETUPVAL                         R34 12
      882 GETTABLEKS                       R34 R34 K109 ["THUMBNAILS_URL"]
      884 GETTABLEKS                       R35 R27 K82 ["assetId"]
      886 NAMECALL                         R32 R32 K14 ["format"]
      888 CALL                             R32 3 1
      889 MOVE                             R31 R32
      890 SETTABLEKS                       R31 R30 K105 ["thumbnailUrl"]
      892 GETTABLEKS                       R32 R27 K96 ["source"]
      894 GETUPVAL                         R33 9
      895 GETTABLEKS                       R33 R33 K48 ["CreatorStore"]
      897 JUMPIFNOTEQ                      R32 R33 ; [+12]
      899 LOADK                            R32 K110 ["%*store/asset/%*"]
      900 GETUPVAL                         R34 12
      901 GETTABLEKS                       R34 R34 K111 ["CREATOR_HUB_URL"]
      903 GETTABLEKS                       R35 R27 K82 ["assetId"]
      905 NAMECALL                         R32 R32 K14 ["format"]
      907 CALL                             R32 3 1
      908 MOVE                             R31 R32
      909 JUMP                             ; [+1]
      910 LOADNIL                          R31
      911 SETTABLEKS                       R31 R30 K106 ["creatorStoreUrl"]
      913 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      915 MOVE                             R29 R22
      916 GETIMPORT                        R28 K51 [table.insert]
      918 CALL                             R28 2 0
      919 FORGLOOP                         R23 2 ; [-85]
      921 GETUPVAL                         R23 0
      922 LOADK                            R25 K112 ["[AssetSearchTool] === SEARCH COMPLETE === resultCount=%* sources=%*"]
      923 LENGTH                           R27 R12
      924 GETIMPORT                        R28 K54 [table.concat]
      926 MOVE                             R29 R14
      927 LOADK                            R30 K113 [","]
      928 CALL                             R28 2 1
      929 NAMECALL                         R25 R25 K14 ["format"]
      931 CALL                             R25 3 1
      932 MOVE                             R24 R25
      933 CALL                             R23 1 0
      934 MOVE                             R23 R22
      935 LOADNIL                          R24
      936 LOADNIL                          R25
      937 FORGPREP                         R23
      938 GETUPVAL                         R28 0
      939 LOADK                            R30 K114 ["[AssetSearchTool]   result[%*]: id=%* name=\"%*\" type=%* source=%* location=%*"]
      940 MOVE                             R32 R26
      941 GETTABLEKS                       R33 R27 K82 ["assetId"]
      943 GETTABLEKS                       R34 R27 K95 ["name"]
      945 GETTABLEKS                       R35 R27 K13 ["assetType"]
      947 GETTABLEKS                       R36 R27 K96 ["source"]
      949 GETTABLEKS                       R38 R27 K97 ["location"]
      951 ORK                              R37 R38 K12 ["nil"]
      952 NAMECALL                         R30 R30 K14 ["format"]
      954 CALL                             R30 7 1
      955 MOVE                             R29 R30
      956 CALL                             R28 1 0
      957 FORGLOOP                         R23 2 ; [-20]
      959 LOADNIL                          R23
      960 LOADB                            R24 1
      961 GETUPVAL                         R25 9
      962 GETTABLEKS                       R25 R25 K46 ["Group"]
      964 JUMPIFEQ                         R4 R25 ; [+5]
      966 JUMPIFEQKS                       R4 K2 ["auto"] ; [+2]
      968 LOADB                            R24 0 +1
      969 LOADB                            R24 1
      970 JUMPIFNOT                        R24 ; [+11]
      971 LENGTH                           R25 R12
      972 JUMPIFNOTEQKN                    R25 K63 [0] ; [+9]
      974 GETUPVAL                         R25 7
      975 MOVE                             R26 R10
      976 CALL                             R25 1 1
      977 LENGTH                           R26 R25
      978 LOADN                            R27 0
      979 JUMPIFNOTLT                      R27 R26 ; [+2]
      981 MOVE                             R23 R25
      982 GETUPVAL                         R25 2
      983 DUPTABLE                         R27 K123 [{"status", "searchId", "query", "scope", "searchSources", "skippedSources", "skippedGroups", "resultCount", "availableFacets", "results", "groups", "nextSteps"}]
      984 LOADK                            R28 K124 ["success"]
      985 SETTABLEKS                       R28 R27 K15 ["status"]
      987 SETTABLEKS                       R19 R27 K115 ["searchId"]
      989 SETTABLEKS                       R3 R27 K1 ["query"]
      991 SETTABLEKS                       R4 R27 K3 ["scope"]
      993 SETTABLEKS                       R14 R27 K116 ["searchSources"]
      995 GETIMPORT                        R29 K126 [next]
      997 MOVE                             R30 R15
      998 CALL                             R29 1 1
      999 JUMPIFNOT                        R29 ; [+2]
     1000 MOVE                             R28 R15
     1001 JUMP                             ; [+1]
     1002 LOADNIL                          R28
     1003 SETTABLEKS                       R28 R27 K117 ["skippedSources"]
     1005 SETTABLEKS                       R16 R27 K118 ["skippedGroups"]
     1007 LENGTH                           R28 R12
     1008 SETTABLEKS                       R28 R27 K119 ["resultCount"]
     1010 LENGTH                           R29 R13
     1011 LOADN                            R30 0
     1012 JUMPIFNOTLT                      R30 R29 ; [+3]
     1014 MOVE                             R28 R13
     1015 JUMP                             ; [+1]
     1016 LOADNIL                          R28
     1017 SETTABLEKS                       R28 R27 K120 ["availableFacets"]
     1019 SETTABLEKS                       R22 R27 K121 ["results"]
     1021 SETTABLEKS                       R23 R27 K122 ["groups"]
     1023 NEWTABLE                         R28 0 4
     1025 LOADK                            R29 K127 ["Review the results and choose the best asset for the user's request. Prefer inventory results (source='inventory') as these are already owned and always insertable."]
     1026 LOADK                            R30 K128 ["For free/owned assets: call insert_asset with assetId, assetType, and assetName from the chosen result to insert it."]
     1027 LOADK                            R31 K129 ["For paid assets (isFree=false): show the user the creatorStoreUrl link and priceLabel so they can purchase it. Do not attempt to insert paid assets — they will fail."]
     1028 LOADK                            R32 K130 ["Some Creator Store assets may be restricted or moderated and fail to insert. If insert_asset fails, try the next result from the list rather than retrying the same asset."]
     1029 SETLIST                          R28 R29 4 [1]
     1031 SETTABLEKS                       R28 R27 K17 ["nextSteps"]
     1033 NAMECALL                         R25 R25 K21 ["JSONEncode"]
     1035 CALL                             R25 2 -1
     1036 CLOSEUPVALS                      R12
     1037 RETURN                           R25 -1

PROTO_31:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Results"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["createFreshGuestContext"]
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R3
       16 LOADNIL                          R7
       17 LOADB                            R8 0
       18 LOADNIL                          R9
       19 MOVE                             R10 R0
       20 CALL                             R4 6 1
       21 MOVE                             R2 R4
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R1 K4 ["onItemClicked"]
       26 RETURN                           R0 0

PROTO_32:
        0 LOADK                            R0 K0 ["Search for models, audio, packages, and other assets"]
        1 RETURN                           R0 1

PROTO_33:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetSearch"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_34:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["AssetSearch"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["registerHydrator"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Type"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K2 ["createToolHandler"]
       18 MOVE                             R2 R0
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 4
       21 GETUPVAL                         R5 5
       22 CALL                             R1 4 1
       23 GETUPVAL                         R2 6
       24 GETTABLEKS                       R2 R2 K3 ["define"]
       26 CALL                             R2 0 1
       27 GETUPVAL                         R4 7
       28 GETTABLEKS                       R4 R4 K4 ["AssetSearch"]
       30 NAMECALL                         R2 R2 K5 ["setName"]
       32 CALL                             R2 2 1
       33 GETUPVAL                         R4 7
       34 GETTABLEKS                       R4 R4 K6 ["replaceTokens"]
       36 LOADK                            R5 K7 ["Searches for assets across Creator Store (public marketplace) and Creator Inventory (user/group/universe).\nUse this tool to find assets by keyword before inserting them with {ToolNames.AssetInsert}.\nReturns a list of matching assets with metadata (name, type, source, price).\n\nScope controls where to search:\n- 'auto' (default): waterfalls through user inventory → one of the user's groups → universe → Creator Store. Best for general \"find me an X\" requests.\n- 'creator_store': searches only the marketplace. Use this when the user wants marketplace assets, paid assets, or when using price/creator filters.\n- 'user': searches the user's personal inventory only.\n- 'group': searches up to 5 of the user's groups (or one specific group via groupId/groupName). Results include creatorId and creatorName indicating which group owns each asset.\n- 'universe': searches the current universe's inventory only.\n\nTargeting a specific group: when the user names a particular group (\"in my group X\" / \"in group 12345\"), set scope='group' AND pass groupId or groupName to constrain to that one group. groupId/groupName are only valid with scope='group'; combining with any other scope (including 'auto') is rejected.\n\nGroup iteration limits: scope='auto' searches at most 1 group (so the waterfall reaches universe/creator_store quickly); scope='group' (without groupId/groupName) searches up to 5 groups. Any groups beyond the limit are returned in `skippedGroups` so the agent can target them with a follow-up scope='group' + groupId call.\n\nResult attribution: each inventory result includes `creatorId` (string, the group or user ID that owns the asset) and `creatorName` (the group/user name when known). `creatorId` semantics depend on `source`: for source='inventory' coming from a group, it's the group ID.\n\nIf a group result set is empty, the response includes a `groups` field listing { id, name } for each of the user's groups — use those values for follow-up queries.\n\nWhen to use price filters: If the user asks for paid/premium assets or specifies a price range, set scope='creator_store' and use priceFilter, minPriceCents, and/or maxPriceCents. These filters only apply to Creator Store searches.\nWhen to use asset type: If the user asks for a specific asset type (audio, decals, meshes, packages, etc.), set assetType to filter results. The inventory API requires exactly one assetType per call and defaults to 'Model' when omitted, so cross-type discovery requires explicit assetType=Image / Audio / etc. Packages are stored as Models with a Package subtype — set assetType='Package' to find them (do not search for the word \"package\" as a query).\nInventory results (source='inventory') are always insertable. Creator Store results may occasionally be restricted — if insert fails, try the next result.\nEach result includes a thumbnailUrl (Roblox Thumbnails API). Fetch it to get JSON with data[0].imageUrl pointing to a CDN image of the asset — useful for visually comparing assets before inserting.\n"]
       37 CALL                             R4 1 -1
       38 NAMECALL                         R2 R2 K8 ["setDescription"]
       40 CALL                             R2 -1 1
       41 LOADK                            R4 K9 ["query"]
       42 DUPTABLE                         R5 K12 [{"type", "description"}]
       43 LOADK                            R6 K13 ["string"]
       44 SETTABLEKS                       R6 R5 K10 ["type"]
       46 LOADK                            R6 K14 ["Search term. Can be empty when filtering by assetType alone (e.g. to list all packages). Supports multi-term search with '+' (e.g. 'red+car') and exact phrase with quotes (e.g. '\"red+car\"')."]
       47 SETTABLEKS                       R6 R5 K11 ["description"]
       49 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
       51 CALL                             R2 3 1
       52 LOADK                            R4 K16 ["scope"]
       53 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
       54 LOADK                            R6 K13 ["string"]
       55 SETTABLEKS                       R6 R5 K10 ["type"]
       57 NEWTABLE                         R6 0 5
       59 LOADK                            R7 K19 ["auto"]
       60 LOADK                            R8 K20 ["creator_store"]
       61 LOADK                            R9 K21 ["user"]
       62 LOADK                            R10 K22 ["group"]
       63 LOADK                            R11 K23 ["universe"]
       64 SETLIST                          R6 R7 5 [1]
       66 SETTABLEKS                       R6 R5 K17 ["enum"]
       68 LOADK                            R6 K24 ["Where to search. 'auto' (default) waterfalls through all available sources. Use explicit scope to target a single source."]
       69 SETTABLEKS                       R6 R5 K11 ["description"]
       71 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
       73 CALL                             R2 3 1
       74 LOADK                            R4 K25 ["includeSources"]
       75 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
       76 LOADK                            R6 K28 ["array"]
       77 SETTABLEKS                       R6 R5 K10 ["type"]
       79 DUPTABLE                         R6 K29 [{"type", "enum"}]
       80 LOADK                            R7 K13 ["string"]
       81 SETTABLEKS                       R7 R6 K10 ["type"]
       83 NEWTABLE                         R7 0 4
       85 LOADK                            R8 K21 ["user"]
       86 LOADK                            R9 K22 ["group"]
       87 LOADK                            R10 K23 ["universe"]
       88 LOADK                            R11 K20 ["creator_store"]
       89 SETLIST                          R7 R8 4 [1]
       91 SETTABLEKS                       R7 R6 K17 ["enum"]
       93 SETTABLEKS                       R6 R5 K26 ["items"]
       95 LOADK                            R6 K30 ["With scope='auto': only search these sources (e.g. ['user', 'creator_store'])."]
       96 SETTABLEKS                       R6 R5 K11 ["description"]
       98 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      100 CALL                             R2 3 1
      101 LOADK                            R4 K31 ["excludeSources"]
      102 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      103 LOADK                            R6 K28 ["array"]
      104 SETTABLEKS                       R6 R5 K10 ["type"]
      106 DUPTABLE                         R6 K29 [{"type", "enum"}]
      107 LOADK                            R7 K13 ["string"]
      108 SETTABLEKS                       R7 R6 K10 ["type"]
      110 NEWTABLE                         R7 0 4
      112 LOADK                            R8 K21 ["user"]
      113 LOADK                            R9 K22 ["group"]
      114 LOADK                            R10 K23 ["universe"]
      115 LOADK                            R11 K20 ["creator_store"]
      116 SETLIST                          R7 R8 4 [1]
      118 SETTABLEKS                       R7 R6 K17 ["enum"]
      120 SETTABLEKS                       R6 R5 K26 ["items"]
      122 LOADK                            R6 K32 ["With scope='auto': skip these sources from the waterfall."]
      123 SETTABLEKS                       R6 R5 K11 ["description"]
      125 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      127 CALL                             R2 3 1
      128 LOADK                            R4 K33 ["groupId"]
      129 DUPTABLE                         R5 K12 [{"type", "description"}]
      130 LOADK                            R6 K13 ["string"]
      131 SETTABLEKS                       R6 R5 K10 ["type"]
      133 LOADK                            R6 K34 ["Numeric group ID to constrain group inventory searches to a single group. Only valid with scope='group' or scope='auto'. Mutually exclusive with groupName."]
      134 SETTABLEKS                       R6 R5 K11 ["description"]
      136 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      138 CALL                             R2 3 1
      139 LOADK                            R4 K35 ["groupName"]
      140 DUPTABLE                         R5 K12 [{"type", "description"}]
      141 LOADK                            R6 K13 ["string"]
      142 SETTABLEKS                       R6 R5 K10 ["type"]
      144 LOADK                            R6 K36 ["Group name to constrain group inventory searches to a single group. Matched case-insensitively against the user's groups. Only valid with scope='group' or scope='auto'. If the name doesn't match any of the user's groups, the response includes a `groups` field listing valid options. Mutually exclusive with groupId."]
      145 SETTABLEKS                       R6 R5 K11 ["description"]
      147 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      149 CALL                             R2 3 1
      150 LOADK                            R4 K37 ["assetType"]
      151 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
      152 LOADK                            R6 K13 ["string"]
      153 SETTABLEKS                       R6 R5 K10 ["type"]
      155 NEWTABLE                         R6 0 8
      157 LOADK                            R7 K38 ["Model"]
      158 LOADK                            R8 K39 ["Audio"]
      159 LOADK                            R9 K40 ["Mesh"]
      160 LOADK                            R10 K41 ["MeshPart"]
      161 LOADK                            R11 K42 ["Image"]
      162 LOADK                            R12 K43 ["Decal"]
      163 LOADK                            R13 K44 ["Video"]
      164 LOADK                            R14 K45 ["Package"]
      165 SETLIST                          R6 R7 8 [1]
      167 SETTABLEKS                       R6 R5 K17 ["enum"]
      169 LOADK                            R6 K46 ["Filter by asset type. Use 'Image' for user-uploaded images (most decals/textures uploaded today are stored as Image, not Decal). Use 'Package' when the user asks about packages — packages are Models with a Package subtype, so a keyword search for 'package' won't find them."]
      170 SETTABLEKS                       R6 R5 K11 ["description"]
      172 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      174 CALL                             R2 3 1
      175 LOADK                            R4 K47 ["maxResults"]
      176 DUPTABLE                         R5 K12 [{"type", "description"}]
      177 LOADK                            R6 K48 ["number"]
      178 SETTABLEKS                       R6 R5 K10 ["type"]
      180 LOADK                            R6 K49 ["Number of results to return (1-20, default 5)."]
      181 SETTABLEKS                       R6 R5 K11 ["description"]
      183 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      185 CALL                             R2 3 1
      186 LOADK                            R4 K50 ["priceFilter"]
      187 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
      188 LOADK                            R6 K13 ["string"]
      189 SETTABLEKS                       R6 R5 K10 ["type"]
      191 NEWTABLE                         R6 0 3
      193 LOADK                            R7 K51 ["free"]
      194 LOADK                            R8 K52 ["paid"]
      195 LOADK                            R9 K53 ["all"]
      196 SETLIST                          R6 R7 3 [1]
      198 SETTABLEKS                       R6 R5 K17 ["enum"]
      200 LOADK                            R6 K54 ["Price filter. Requires scope='creator_store'. 'free' returns only free assets, 'paid' returns only paid assets, 'all' (default) returns both."]
      201 SETTABLEKS                       R6 R5 K11 ["description"]
      203 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      205 CALL                             R2 3 1
      206 LOADK                            R4 K55 ["minPriceCents"]
      207 DUPTABLE                         R5 K12 [{"type", "description"}]
      208 LOADK                            R6 K48 ["number"]
      209 SETTABLEKS                       R6 R5 K10 ["type"]
      211 LOADK                            R6 K56 ["Minimum price in cents. Requires scope='creator_store'. Use with maxPriceCents for a price range (e.g. minPriceCents=100, maxPriceCents=5000)."]
      212 SETTABLEKS                       R6 R5 K11 ["description"]
      214 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      216 CALL                             R2 3 1
      217 LOADK                            R4 K57 ["maxPriceCents"]
      218 DUPTABLE                         R5 K12 [{"type", "description"}]
      219 LOADK                            R6 K48 ["number"]
      220 SETTABLEKS                       R6 R5 K10 ["type"]
      222 LOADK                            R6 K58 ["Maximum price in cents. Requires scope='creator_store'. Use with minPriceCents for a price range."]
      223 SETTABLEKS                       R6 R5 K11 ["description"]
      225 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      227 CALL                             R2 3 1
      228 LOADK                            R4 K59 ["verifiedCreatorsOnly"]
      229 DUPTABLE                         R5 K12 [{"type", "description"}]
      230 LOADK                            R6 K60 ["boolean"]
      231 SETTABLEKS                       R6 R5 K10 ["type"]
      233 LOADK                            R6 K61 ["Only return results from verified creators (Creator Store only)."]
      234 SETTABLEKS                       R6 R5 K11 ["description"]
      236 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      238 CALL                             R2 3 1
      239 LOADK                            R4 K62 ["audioMinDuration"]
      240 DUPTABLE                         R5 K12 [{"type", "description"}]
      241 LOADK                            R6 K48 ["number"]
      242 SETTABLEKS                       R6 R5 K10 ["type"]
      244 LOADK                            R6 K63 ["Minimum audio duration in seconds (only when assetType='Audio')."]
      245 SETTABLEKS                       R6 R5 K11 ["description"]
      247 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      249 CALL                             R2 3 1
      250 LOADK                            R4 K64 ["audioMaxDuration"]
      251 DUPTABLE                         R5 K12 [{"type", "description"}]
      252 LOADK                            R6 K48 ["number"]
      253 SETTABLEKS                       R6 R5 K10 ["type"]
      255 LOADK                            R6 K65 ["Maximum audio duration in seconds (only when assetType='Audio')."]
      256 SETTABLEKS                       R6 R5 K11 ["description"]
      258 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      260 CALL                             R2 3 1
      261 LOADK                            R4 K66 ["facets"]
      262 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      263 LOADK                            R6 K28 ["array"]
      264 SETTABLEKS                       R6 R5 K10 ["type"]
      266 DUPTABLE                         R6 K67 [{"type"}]
      267 LOADK                            R7 K13 ["string"]
      268 SETTABLEKS                       R7 R6 K10 ["type"]
      270 SETTABLEKS                       R6 R5 K26 ["items"]
      272 LOADK                            R6 K68 ["Additional keywords to refine the search (Creator Store only, ignored for inventory scopes). Facets narrow results by related concepts — e.g. for a 'lion' search: 'mane', 'safari', 'realistic', 'animated'. Available facets depend on the query."]
      273 SETTABLEKS                       R6 R5 K11 ["description"]
      275 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      277 CALL                             R2 3 1
      278 LOADK                            R4 K69 ["tags"]
      279 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      280 LOADK                            R6 K28 ["array"]
      281 SETTABLEKS                       R6 R5 K10 ["type"]
      283 DUPTABLE                         R6 K67 [{"type"}]
      284 LOADK                            R7 K13 ["string"]
      285 SETTABLEKS                       R7 R6 K10 ["type"]
      287 SETTABLEKS                       R6 R5 K26 ["items"]
      289 LOADK                            R6 K70 ["Tags to filter by (Creator Store only, ignored for inventory scopes). Tags are category labels like 'Vehicle', 'Airplane', 'Fantasy'."]
      290 SETTABLEKS                       R6 R5 K11 ["description"]
      292 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      294 CALL                             R2 3 1
      295 MOVE                             R4 R1
      296 NAMECALL                         R2 R2 K71 ["setHandler"]
      298 CALL                             R2 2 1
      299 DUPTABLE                         R4 K77 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      300 LOADK                            R5 K78 ["Search Asset"]
      301 SETTABLEKS                       R5 R4 K72 ["title"]
      303 LOADB                            R5 1
      304 SETTABLEKS                       R5 R4 K73 ["readOnlyHint"]
      306 LOADB                            R5 0
      307 SETTABLEKS                       R5 R4 K74 ["destructiveHint"]
      309 LOADB                            R5 1
      310 SETTABLEKS                       R5 R4 K75 ["idempotentHint"]
      312 LOADB                            R5 1
      313 SETTABLEKS                       R5 R4 K76 ["openWorldHint"]
      315 NAMECALL                         R2 R2 K79 ["setAnnotations"]
      317 CALL                             R2 2 1
      318 NAMECALL                         R2 R2 K80 ["build"]
      320 CALL                             R2 1 1
      321 DUPTABLE                         R3 K84 [{"command", "getDescription", "mapToToolCall"}]
      322 LOADK                            R4 K85 ["search_asset"]
      323 SETTABLEKS                       R4 R3 K81 ["command"]
      325 DUPCLOSURE                       R4 K86 [PROTO_32]
      326 SETTABLEKS                       R4 R3 K82 ["getDescription"]
      328 DUPCLOSURE                       R4 K87 [PROTO_33]
      329 CAPTURE                          UPVAL U7
      330 SETTABLEKS                       R4 R3 K83 ["mapToToolCall"]
      332 DUPTABLE                         R4 K89 [{"transformInitialContent"}]
      333 DUPCLOSURE                       R5 K90 [PROTO_34]
      334 CAPTURE                          UPVAL U2
      335 SETTABLEKS                       R5 R4 K88 ["transformInitialContent"]
      337 DUPTABLE                         R5 K96 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction"}]
      338 SETTABLEKS                       R2 R5 K91 ["definition"]
      340 NEWTABLE                         R6 0 1
      342 MOVE                             R7 R3
      343 SETLIST                          R6 R7 1 [1]
      345 SETTABLEKS                       R6 R5 K92 ["slashCommands"]
      347 NEWTABLE                         R6 0 1
      349 GETUPVAL                         R7 2
      350 SETLIST                          R6 R7 1 [1]
      352 SETTABLEKS                       R6 R5 K93 ["contentWidgets"]
      354 SETTABLEKS                       R4 R5 K94 ["streamTransform"]
      356 DUPCLOSURE                       R6 K97 [PROTO_35]
      357 CAPTURE                          UPVAL U8
      358 SETTABLEKS                       R6 R5 K95 ["displayNameFunction"]
      360 RETURN                           R5 1

PROTO_37:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_38:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Serializer"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Resources"]
       39 GETTABLEKS                       R6 R6 K14 ["Localization"]
       41 GETTABLEKS                       R6 R6 K15 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K18 [game]
       51 LOADK                            R9 K19 ["HttpRbxApiService"]
       52 NAMECALL                         R7 R7 K20 ["GetService"]
       54 CALL                             R7 2 1
       55 GETIMPORT                        R8 K18 [game]
       57 LOADK                            R10 K21 ["HttpService"]
       58 NAMECALL                         R8 R8 K20 ["GetService"]
       60 CALL                             R8 2 1
       61 GETIMPORT                        R9 K1 [script]
       63 LOADK                            R11 K22 ["AssetManagement"]
       64 NAMECALL                         R9 R9 K3 ["FindFirstAncestor"]
       66 CALL                             R9 2 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K6 ["Parent"]
       71 GETTABLEKS                       R11 R11 K23 ["Networking"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R10 K24 ["RobloxAPI"]
       76 GETTABLEKS                       R11 R11 K25 ["Url"]
       78 GETTABLEKS                       R11 R11 K26 ["new"]
       80 CALL                             R11 0 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R9 K27 ["AssetManagementConstants"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R9 K28 ["AssetManagementGuestUtils"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K5 [require]
       93 GETTABLEKS                       R15 R9 K29 ["AssetManagementUrls"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R9 K30 ["AssetManagementUtils"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K5 [require]
      103 GETTABLEKS                       R17 R9 K31 ["AssetSearchContentWidget"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K5 [require]
      108 GETTABLEKS                       R18 R0 K32 ["Flags"]
      110 GETTABLEKS                       R18 R18 K33 ["FFlagAssistantMultipleChatPersistence"]
      112 CALL                             R17 1 1
      113 GETTABLEKS                       R18 R2 K9 ["Util"]
      115 GETTABLEKS                       R18 R18 K34 ["ToolBuilder"]
      117 GETTABLEKS                       R19 R4 K35 ["ToolNames"]
      119 GETTABLEKS                       R20 R12 K36 ["INVENTORY_ASSET_TYPE_MAP"]
      121 GETTABLEKS                       R21 R12 K37 ["INVENTORY_TYPE_NORMALIZE"]
      123 GETTABLEKS                       R22 R12 K38 ["CREATOR_STORE_CATEGORY_MAP"]
      125 GETTABLEKS                       R23 R12 K39 ["ASSET_TYPE_ID_TO_NAME"]
      127 GETTABLEKS                       R24 R12 K40 ["SearchSource"]
      129 GETIMPORT                        R25 K44 [Enum.AssetType.Package]
      131 GETTABLEKS                       R25 R25 K45 ["Name"]
      133 GETIMPORT                        R26 K47 [Enum.AssetType.Model]
      135 GETTABLEKS                       R26 R26 K45 ["Name"]
      137 DUPTABLE                         R27 K51 [{"searchCreatorInventory", "fetchUserGroups", "postRbxApi"}]
      138 DUPCLOSURE                       R28 K52 [PROTO_0]
      139 CAPTURE                          VAL R14
      140 SETTABLEKS                       R28 R27 K48 ["searchCreatorInventory"]
      142 DUPCLOSURE                       R28 K53 [PROTO_1]
      143 CAPTURE                          VAL R14
      144 SETTABLEKS                       R28 R27 K49 ["fetchUserGroups"]
      146 DUPCLOSURE                       R28 K54 [PROTO_2]
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R28 R27 K50 ["postRbxApi"]
      150 GETTABLEKS                       R28 R15 K55 ["debugPrint"]
      152 DUPTABLE                         R29 K61 [{"auto", "creator_store", "user", "group", "universe"}]
      153 LOADB                            R30 1
      154 SETTABLEKS                       R30 R29 K56 ["auto"]
      156 LOADB                            R30 1
      157 SETTABLEKS                       R30 R29 K57 ["creator_store"]
      159 LOADB                            R30 1
      160 SETTABLEKS                       R30 R29 K58 ["user"]
      162 LOADB                            R30 1
      163 SETTABLEKS                       R30 R29 K59 ["group"]
      165 LOADB                            R30 1
      166 SETTABLEKS                       R30 R29 K60 ["universe"]
      168 DUPTABLE                         R30 K62 [{"user", "group", "universe"}]
      169 LOADK                            R31 K63 ["userids"]
      170 SETTABLEKS                       R31 R30 K58 ["user"]
      172 LOADK                            R31 K64 ["groupids"]
      173 SETTABLEKS                       R31 R30 K59 ["group"]
      175 LOADK                            R31 K65 ["universeids"]
      176 SETTABLEKS                       R31 R30 K60 ["universe"]
      178 DUPTABLE                         R31 K66 [{"userids", "groupids", "universeids"}]
      179 LOADK                            R32 K67 ["User"]
      180 SETTABLEKS                       R32 R31 K63 ["userids"]
      182 LOADK                            R32 K68 ["Group"]
      183 SETTABLEKS                       R32 R31 K64 ["groupids"]
      185 LOADK                            R32 K69 ["Universe"]
      186 SETTABLEKS                       R32 R31 K65 ["universeids"]
      188 LOADNIL                          R32
      189 LOADNIL                          R33
      190 LOADNIL                          R34
      191 LOADNIL                          R35
      192 NEWTABLE                         R36 0 2
      194 LOADK                            R37 K70 ["StudioAssistant"]
      195 LOADK                            R38 K71 ["StudioAssetManager"]
      196 SETLIST                          R36 R37 2 [1]
      198 DUPCLOSURE                       R37 K72 [PROTO_3]
      199 DUPCLOSURE                       R38 K73 [PROTO_4]
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R37
      202 DUPCLOSURE                       R39 K74 [PROTO_5]
      203 CAPTURE                          VAL R13
      204 DUPCLOSURE                       R40 K75 [PROTO_7]
      205 NEWCLOSURE                       R41 P7
      206 CAPTURE                          REF R32
      207 CAPTURE                          REF R33
      208 CAPTURE                          VAL R28
      209 CAPTURE                          VAL R8
      210 NEWCLOSURE                       R42 P8
      211 CAPTURE                          REF R34
      212 CAPTURE                          REF R35
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R27
      215 CAPTURE                          VAL R36
      216 DUPCLOSURE                       R43 K76 [PROTO_12]
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R24
      219 DUPCLOSURE                       R44 K77 [PROTO_15]
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R28
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R23
      226 DUPCLOSURE                       R45 K78 [PROTO_17]
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R8
      229 CAPTURE                          VAL R24
      230 DUPCLOSURE                       R46 K79 [PROTO_18]
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R24
      236 NEWTABLE                         R47 0 0
      238 DUPCLOSURE                       R48 K80 [PROTO_23]
      239 CAPTURE                          VAL R47
      240 CAPTURE                          VAL R24
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R44
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R45
      247 CAPTURE                          VAL R30
      248 CAPTURE                          VAL R20
      249 CAPTURE                          VAL R26
      250 CAPTURE                          VAL R42
      251 CAPTURE                          VAL R27
      252 CAPTURE                          VAL R46
      253 CAPTURE                          VAL R31
      254 DUPCLOSURE                       R49 K81 [PROTO_24]
      255 DUPCLOSURE                       R50 K82 [PROTO_30]
      256 CAPTURE                          VAL R28
      257 CAPTURE                          VAL R29
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R13
      260 CAPTURE                          VAL R1
      261 CAPTURE                          VAL R16
      262 CAPTURE                          VAL R41
      263 CAPTURE                          VAL R42
      264 CAPTURE                          VAL R43
      265 CAPTURE                          VAL R24
      266 CAPTURE                          VAL R25
      267 CAPTURE                          VAL R48
      268 CAPTURE                          VAL R11
      269 DUPCLOSURE                       R51 K83 [PROTO_36]
      270 CAPTURE                          VAL R17
      271 CAPTURE                          VAL R3
      272 CAPTURE                          VAL R16
      273 CAPTURE                          VAL R13
      274 CAPTURE                          VAL R37
      275 CAPTURE                          VAL R50
      276 CAPTURE                          VAL R18
      277 CAPTURE                          VAL R19
      278 CAPTURE                          VAL R5
      279 DUPTABLE                         R52 K87 [{"setupGuest", "_testing", "_deps"}]
      280 SETTABLEKS                       R51 R52 K84 ["setupGuest"]
      282 DUPTABLE                         R53 K90 [{"resetCachedContext", "resetCachedGroups"}]
      283 NEWCLOSURE                       R54 P17
      284 CAPTURE                          REF R32
      285 CAPTURE                          REF R33
      286 SETTABLEKS                       R54 R53 K88 ["resetCachedContext"]
      288 NEWCLOSURE                       R54 P18
      289 CAPTURE                          REF R34
      290 CAPTURE                          REF R35
      291 SETTABLEKS                       R54 R53 K89 ["resetCachedGroups"]
      293 SETTABLEKS                       R53 R52 K85 ["_testing"]
      295 SETTABLEKS                       R27 R52 K86 ["_deps"]
      297 CLOSEUPVALS                      R32
      298 RETURN                           R52 1
