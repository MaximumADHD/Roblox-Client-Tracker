PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+8]
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K1 ["InstallPluginFromWebSuccess"]
        7 GETUPVAL                         R5 2
        8 NAMECALL                         R2 R2 K2 ["report"]
       10 CALL                             R2 3 0
       11 JUMP                             ; [+7]
       12 GETUPVAL                         R2 1
       13 LOADK                            R4 K3 ["InstallPluginFromWebFailure"]
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R0
       16 NAMECALL                         R2 R2 K2 ["report"]
       18 CALL                             R2 4 0
       19 GETUPVAL                         R2 3
       20 GETUPVAL                         R4 4
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R0
       23 MOVE                             R7 R1
       24 CALL                             R4 3 -1
       25 NAMECALL                         R2 R2 K4 ["dispatch"]
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["TryInstallPlugin"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+152]
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["data"]
        7 JUMPIFNOT                        R1 ; [+147]
        8 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       10 GETTABLEKS                       R1 R1 K1 ["data"]
       12 GETTABLEN                        R2 R1 1
       13 JUMPIFNOT                        R2 ; [+103]
       14 GETTABLEKS                       R3 R2 K2 ["versionId"]
       16 JUMPIFNOT                        R3 ; [+100]
       17 GETUPVAL                         R3 0
       18 GETUPVAL                         R5 1
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R7 R2 K3 ["name"]
       22 GETTABLEKS                       R9 R2 K5 ["description"]
       24 ORK                              R8 R9 K4 [""]
       25 GETTABLEKS                       R11 R2 K2 ["versionId"]
       27 FASTCALL1                        TOSTRING R11 ; [+2]
       28 GETIMPORT                        R10 K7 [tostring]
       30 CALL                             R10 1 1
       31 ORK                              R9 R10 K4 [""]
       32 GETTABLEKS                       R11 R2 K8 ["created"]
       34 ORK                              R10 R11 K4 [""]
       35 GETTABLEKS                       R12 R2 K9 ["updated"]
       37 ORK                              R11 R12 K4 [""]
       38 CALL                             R5 6 -1
       39 NAMECALL                         R3 R3 K10 ["dispatch"]
       41 CALL                             R3 -1 0
       42 GETTABLEKS                       R3 R2 K2 ["versionId"]
       44 GETIMPORT                        R4 K12 [pcall]
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R3
       50 CALL                             R4 1 2
       51 JUMPIFNOT                        R4 ; [+32]
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R6 R6 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       58 JUMPIFNOTEQ                      R6 R7 ; [+8]
       60 GETUPVAL                         R7 5
       61 LOADK                            R9 K14 ["InstallPluginFromWebSuccess"]
       62 GETUPVAL                         R10 2
       63 NAMECALL                         R7 R7 K15 ["report"]
       65 CALL                             R7 3 0
       66 JUMP                             ; [+7]
       67 GETUPVAL                         R7 5
       68 LOADK                            R9 K16 ["InstallPluginFromWebFailure"]
       69 GETUPVAL                         R10 2
       70 MOVE                             R11 R6
       71 NAMECALL                         R7 R7 K15 ["report"]
       73 CALL                             R7 4 0
       74 GETUPVAL                         R7 0
       75 GETUPVAL                         R9 6
       76 GETUPVAL                         R10 2
       77 MOVE                             R11 R6
       78 LOADK                            R12 K4 [""]
       79 CALL                             R9 3 -1
       80 NAMECALL                         R7 R7 K10 ["dispatch"]
       82 CALL                             R7 -1 0
       83 RETURN                           R0 0
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R6 R6 K17 ["PLUGIN_NOT_INSTALLED"]
       87 ORK                              R7 R5 K4 [""]
       88 GETUPVAL                         R8 4
       89 GETTABLEKS                       R8 R8 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       91 JUMPIFNOTEQ                      R6 R8 ; [+8]
       93 GETUPVAL                         R8 5
       94 LOADK                            R10 K14 ["InstallPluginFromWebSuccess"]
       95 GETUPVAL                         R11 2
       96 NAMECALL                         R8 R8 K15 ["report"]
       98 CALL                             R8 3 0
       99 JUMP                             ; [+7]
      100 GETUPVAL                         R8 5
      101 LOADK                            R10 K16 ["InstallPluginFromWebFailure"]
      102 GETUPVAL                         R11 2
      103 MOVE                             R12 R6
      104 NAMECALL                         R8 R8 K15 ["report"]
      106 CALL                             R8 4 0
      107 GETUPVAL                         R8 0
      108 GETUPVAL                         R10 6
      109 GETUPVAL                         R11 2
      110 MOVE                             R12 R6
      111 MOVE                             R13 R7
      112 CALL                             R10 3 -1
      113 NAMECALL                         R8 R8 K10 ["dispatch"]
      115 CALL                             R8 -1 0
      116 RETURN                           R0 0
      117 GETUPVAL                         R3 4
      118 GETTABLEKS                       R3 R3 K18 ["PLUGIN_DETAILS_UNAVAILABLE"]
      120 GETTABLEKS                       R5 R0 K0 ["responseBody"]
      122 FASTCALL1                        TOSTRING R5 ; [+2]
      123 GETIMPORT                        R4 K7 [tostring]
      125 CALL                             R4 1 1
      126 GETUPVAL                         R5 4
      127 GETTABLEKS                       R5 R5 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
      129 JUMPIFNOTEQ                      R3 R5 ; [+8]
      131 GETUPVAL                         R5 5
      132 LOADK                            R7 K14 ["InstallPluginFromWebSuccess"]
      133 GETUPVAL                         R8 2
      134 NAMECALL                         R5 R5 K15 ["report"]
      136 CALL                             R5 3 0
      137 JUMP                             ; [+7]
      138 GETUPVAL                         R5 5
      139 LOADK                            R7 K16 ["InstallPluginFromWebFailure"]
      140 GETUPVAL                         R8 2
      141 MOVE                             R9 R3
      142 NAMECALL                         R5 R5 K15 ["report"]
      144 CALL                             R5 4 0
      145 GETUPVAL                         R5 0
      146 GETUPVAL                         R7 6
      147 GETUPVAL                         R8 2
      148 MOVE                             R9 R3
      149 MOVE                             R10 R4
      150 CALL                             R7 3 -1
      151 NAMECALL                         R5 R5 K10 ["dispatch"]
      153 CALL                             R5 -1 0
      154 RETURN                           R0 0
      155 GETUPVAL                         R1 4
      156 GETTABLEKS                       R1 R1 K18 ["PLUGIN_DETAILS_UNAVAILABLE"]
      158 GETTABLEKS                       R3 R0 K0 ["responseBody"]
      160 FASTCALL1                        TOSTRING R3 ; [+2]
      161 GETIMPORT                        R2 K7 [tostring]
      163 CALL                             R2 1 1
      164 GETUPVAL                         R3 4
      165 GETTABLEKS                       R3 R3 K13 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
      167 JUMPIFNOTEQ                      R1 R3 ; [+8]
      169 GETUPVAL                         R3 5
      170 LOADK                            R5 K14 ["InstallPluginFromWebSuccess"]
      171 GETUPVAL                         R6 2
      172 NAMECALL                         R3 R3 K15 ["report"]
      174 CALL                             R3 3 0
      175 JUMP                             ; [+7]
      176 GETUPVAL                         R3 5
      177 LOADK                            R5 K16 ["InstallPluginFromWebFailure"]
      178 GETUPVAL                         R6 2
      179 MOVE                             R7 R1
      180 NAMECALL                         R3 R3 K15 ["report"]
      182 CALL                             R3 4 0
      183 GETUPVAL                         R3 0
      184 GETUPVAL                         R5 6
      185 GETUPVAL                         R6 2
      186 MOVE                             R7 R1
      187 MOVE                             R8 R2
      188 CALL                             R5 3 -1
      189 NAMECALL                         R3 R3 K10 ["dispatch"]
      191 CALL                             R3 -1 0
      192 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["HTTP_ERROR"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+8]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["InstallPluginFromWebSuccess"]
       10 GETUPVAL                         R5 2
       11 NAMECALL                         R2 R2 K3 ["report"]
       13 CALL                             R2 3 0
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K4 ["InstallPluginFromWebFailure"]
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R1
       19 NAMECALL                         R2 R2 K3 ["report"]
       21 CALL                             R2 4 0
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R4 4
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R1
       26 MOVE                             R7 R0
       27 CALL                             R4 3 -1
       28 NAMECALL                         R2 R2 K5 ["dispatch"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K2 [tostring]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["true"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIFNOT                        R1 ; [+31]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["Develop"]
       14 GETTABLEKS                       R2 R2 K5 ["v1"]
       16 GETTABLEKS                       R2 R2 K6 ["Plugins"]
       18 NEWTABLE                         R3 0 1
       20 GETUPVAL                         R4 1
       21 SETLIST                          R3 R4 1 [1]
       23 CALL                             R2 1 1
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U7
       38 NAMECALL                         R2 R2 K7 ["andThen"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1
       42 GETUPVAL                         R2 5
       43 GETTABLEKS                       R2 R2 K8 ["PLUGIN_NOT_OWNED"]
       45 GETUPVAL                         R3 5
       46 GETTABLEKS                       R3 R3 K9 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
       48 JUMPIFNOTEQ                      R2 R3 ; [+8]
       50 GETUPVAL                         R3 6
       51 LOADK                            R5 K10 ["InstallPluginFromWebSuccess"]
       52 GETUPVAL                         R6 1
       53 NAMECALL                         R3 R3 K11 ["report"]
       55 CALL                             R3 3 0
       56 JUMP                             ; [+7]
       57 GETUPVAL                         R3 6
       58 LOADK                            R5 K12 ["InstallPluginFromWebFailure"]
       59 GETUPVAL                         R6 1
       60 MOVE                             R7 R2
       61 NAMECALL                         R3 R3 K11 ["report"]
       63 CALL                             R3 4 0
       64 GETUPVAL                         R3 2
       65 GETUPVAL                         R5 7
       66 GETUPVAL                         R6 1
       67 MOVE                             R7 R2
       68 LOADK                            R8 K13 [""]
       69 CALL                             R5 3 -1
       70 NAMECALL                         R3 R3 K14 ["dispatch"]
       72 CALL                             R3 -1 0
       73 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["HTTP_ERROR"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+8]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["InstallPluginFromWebSuccess"]
       10 GETUPVAL                         R5 2
       11 NAMECALL                         R2 R2 K3 ["report"]
       13 CALL                             R2 3 0
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K4 ["InstallPluginFromWebFailure"]
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R1
       19 NAMECALL                         R2 R2 K3 ["report"]
       21 CALL                             R2 4 0
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R4 4
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R1
       26 MOVE                             R7 R0
       27 CALL                             R4 3 -1
       28 NAMECALL                         R2 R2 K5 ["dispatch"]
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 1
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R0 K0 ["dispatch"]
       11 CALL                             R1 -1 0
       12 NAMECALL                         R1 R0 K1 ["flush"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 LOADK                            R3 K2 ["TryInstallPluginFromWeb"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R1 R1 K3 ["report"]
       20 CALL                             R1 3 0
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 NEWCLOSURE                       R2 P1
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U5
       36 NEWCLOSURE                       R3 P2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U5
       42 GETUPVAL                         R4 8
       43 NAMECALL                         R4 R4 K4 ["GetUserId"]
       45 CALL                             R4 1 1
       46 GETUPVAL                         R5 6
       47 GETTABLEKS                       R5 R5 K5 ["Inventory"]
       49 GETTABLEKS                       R5 R5 K6 ["v1"]
       51 GETTABLEKS                       R5 R5 K7 ["Users"]
       53 GETTABLEKS                       R5 R5 K8 ["Items"]
       55 GETTABLEKS                       R5 R5 K9 ["IsOwned"]
       57 MOVE                             R6 R4
       58 GETIMPORT                        R7 K13 [Enum.AvatarItemType.Asset]
       60 GETUPVAL                         R8 1
       61 CALL                             R5 3 1
       62 MOVE                             R7 R2
       63 MOVE                             R8 R3
       64 NAMECALL                         R5 R5 K14 ["andThen"]
       66 CALL                             R5 3 0
       67 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 NOT                              R5 R6
        3 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        5 LOADK                            R6 K0 ["InstallPluginFromWeb is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R4 K2 [assert]
        8 CALL                             R4 2 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          VAL R0
       19 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Constants"]
       24 GETTABLEKS                       R3 R3 K9 ["PluginInstalledStatus"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Actions"]
       33 GETTABLEKS                       R4 R4 K11 ["SetPluginInstallStatus"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Actions"]
       42 GETTABLEKS                       R5 R5 K12 ["SetPluginId"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K10 ["Actions"]
       51 GETTABLEKS                       R6 R6 K13 ["SetPluginMetadata"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Actions"]
       60 GETTABLEKS                       R7 R7 K14 ["ClearPluginData"]
       62 CALL                             R6 1 1
       63 DUPCLOSURE                       R7 K15 [PROTO_7]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 RETURN                           R7 1
