PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["RoleSubjectKey"]
        5 GETTABLE                         R2 R3 R4
        6 JUMPIF                           R2 ; [+4]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["AssetPermissionLevel"]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R0 K0 ["Permissions"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["RoleSubjectKey"]
       16 GETTABLE                         R2 R3 R4
       17 GETTABLEKS                       R4 R1 K3 ["Id"]
       19 GETTABLE                         R3 R2 R4
       20 JUMPIF                           R3 ; [+4]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K2 ["AssetPermissionLevel"]
       24 RETURN                           R3 1
       25 GETTABLEKS                       R4 R1 K3 ["Id"]
       27 GETTABLE                         R3 R2 R4
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K4 ["PermissionLevelKey"]
       31 GETTABLE                         R4 R3 R5
       32 JUMPIF                           R4 ; [+3]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K2 ["AssetPermissionLevel"]
       36 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Permissions"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["RoleSubjectKey"]
        5 GETTABLE                         R2 R3 R4
        6 JUMPIF                           R2 ; [+4]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["NoneKey"]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R4 R0 K0 ["Permissions"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K1 ["RoleSubjectKey"]
       16 GETTABLE                         R3 R4 R5
       17 GETTABLEKS                       R4 R1 K3 ["Id"]
       19 GETTABLE                         R2 R3 R4
       20 JUMPIF                           R2 ; [+4]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K4 ["NoAccessKey"]
       24 RETURN                           R2 1
       25 GETTABLEKS                       R5 R0 K0 ["Permissions"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K1 ["RoleSubjectKey"]
       30 GETTABLE                         R4 R5 R6
       31 GETTABLEKS                       R5 R1 K3 ["Id"]
       33 GETTABLE                         R3 R4 R5
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K5 ["ActionKey"]
       37 GETTABLE                         R2 R3 R4
       38 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["Key"]
        7 JUMPIFNOTEQ                      R7 R0 ; [+3]
        9 LOADB                            R7 0
       10 RETURN                           R7 1
       11 FORGLOOP                         R2 2 ; [-7]
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Enabled"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"expanded"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K4 ["state"]
       12 GETTABLEKS                       R4 R5 K2 ["expanded"]
       14 NOT                              R3 R4
       15 SETTABLEKS                       R3 R2 K2 ["expanded"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["NoAccessKey"]
        6 JUMPIFNOTEQ                      R0 R2 ; [+9]
        8 GETTABLEKS                       R2 R1 K2 ["Localization"]
       10 LOADK                            R4 K3 ["AssetConfigPackagePermissions"]
       11 LOADK                            R5 K4 ["NoAccessLabel"]
       12 NAMECALL                         R2 R2 K5 ["getText"]
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K6 ["UseViewKey"]
       19 JUMPIFNOTEQ                      R0 R2 ; [+9]
       21 GETTABLEKS                       R2 R1 K2 ["Localization"]
       23 LOADK                            R4 K3 ["AssetConfigPackagePermissions"]
       24 LOADK                            R5 K7 ["UseViewLabel"]
       25 NAMECALL                         R2 R2 K5 ["getText"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K8 ["EditKey"]
       32 JUMPIFNOTEQ                      R0 R2 ; [+9]
       34 GETTABLEKS                       R2 R1 K2 ["Localization"]
       36 LOADK                            R4 K3 ["AssetConfigPackagePermissions"]
       37 LOADK                            R5 K9 ["EditLabel"]
       38 NAMECALL                         R2 R2 K5 ["getText"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R2 R3 K10 ["NoneKey"]
       45 JUMPIFNOTEQ                      R0 R2 ; [+3]
       47 LOADK                            R2 K11 [""]
       48 RETURN                           R2 1
       49 GETIMPORT                        R2 K13 [error]
       51 LOADK                            R4 K14 ["Unsupported Action: "]
       52 FASTCALL1                        TOSTRING R0 ; [+3]
       53 MOVE                             R6 R0
       54 GETIMPORT                        R5 K16 [tostring]
       56 CALL                             R5 1 1
       57 CONCAT                           R3 R4 R5
       58 CALL                             R2 1 0
       59 LOADK                            R2 K11 [""]
       60 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETIMPORT                        R1 K2 [next]
        5 GETTABLEKS                       R2 R0 K3 ["Items"]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+4]
       10 NEWTABLE                         R1 0 0
       12 RETURN                           R1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K4 ["List"]
       16 GETTABLEKS                       R1 R2 K5 ["join"]
       18 NEWTABLE                         R2 0 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K6 ["Dictionary"]
       23 GETTABLEKS                       R3 R4 K5 ["join"]
       25 DUPTABLE                         R4 K10 [{"Key", "Display", "Description"}]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K11 ["NoAccessKey"]
       29 SETTABLEKS                       R5 R4 K7 ["Key"]
       31 GETTABLEKS                       R5 R0 K12 ["Localization"]
       33 LOADK                            R7 K13 ["AssetConfigPackagePermissions"]
       34 LOADK                            R8 K14 ["NoAccessLabel"]
       35 NAMECALL                         R5 R5 K15 ["getText"]
       37 CALL                             R5 3 1
       38 SETTABLEKS                       R5 R4 K8 ["Display"]
       40 GETTABLEKS                       R5 R0 K12 ["Localization"]
       42 LOADK                            R7 K13 ["AssetConfigPackagePermissions"]
       43 LOADK                            R8 K16 ["NoAccessDescription"]
       44 NAMECALL                         R5 R5 K15 ["getText"]
       46 CALL                             R5 3 1
       47 SETTABLEKS                       R5 R4 K9 ["Description"]
       49 CALL                             R3 1 -1
       50 SETLIST                          R2 R3 -1 [1]
       52 GETTABLEKS                       R3 R0 K3 ["Items"]
       54 CALL                             R1 2 1
       55 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R3 K1 [require]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K2 ["Src"]
        5 GETTABLEKS                       R5 R6 K3 ["Flags"]
        7 GETTABLEKS                       R4 R5 K4 ["getFFlagAACPermissionsPage"]
        9 CALL                             R3 1 1
       10 CALL                             R3 0 1
       11 NOT                              R2 R3
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["This component is deprecated by FFlagAACPermissionsPage"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 DUPTABLE                         R1 K10 [{"expanded", "hovered"}]
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K8 ["expanded"]
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K9 ["hovered"]
       25 SETTABLEKS                       R1 R0 K11 ["state"]
       27 NEWCLOSURE                       R1 P0
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K12 ["onClick"]
       31 NEWCLOSURE                       R1 P1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K13 ["getLabelForAction"]
       36 NEWCLOSURE                       R1 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U1
       40 SETTABLEKS                       R1 R0 K14 ["getRolesetItems"]
       42 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["Rank"]
        2 GETTABLEKS                       R4 R0 K0 ["Rank"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["RolePermissionChanged"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["RolePermissionChanged"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["Id"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K2 [{"UIListLayout"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["createElement"]
        6 LOADK                            R4 K1 ["UIListLayout"]
        7 DUPTABLE                         R5 K5 [{"SortOrder"}]
        8 GETIMPORT                        R6 K8 [Enum.SortOrder.LayoutOrder]
       10 SETTABLEKS                       R6 R5 K4 ["SortOrder"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["UIListLayout"]
       15 LOADB                            R3 0
       16 LOADB                            R4 0
       17 GETTABLEKS                       R5 R1 K7 ["LayoutOrder"]
       19 GETTABLEKS                       R8 R0 K0 ["props"]
       21 GETTABLEKS                       R7 R8 K9 ["GroupData"]
       23 JUMPIFNOT                        R7 ; [+7]
       24 GETTABLEKS                       R8 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R8 K9 ["GroupData"]
       28 GETTABLEKS                       R6 R7 K10 ["Roles"]
       30 JUMPIF                           R6 ; [+2]
       31 NEWTABLE                         R6 0 0
       33 GETIMPORT                        R7 K13 [table.sort]
       35 MOVE                             R8 R6
       36 DUPCLOSURE                       R9 K14 [PROTO_7]
       37 CALL                             R7 2 0
       38 GETTABLEKS                       R7 R0 K15 ["getRolesetItems"]
       40 CALL                             R7 0 1
       41 GETTABLEKS                       R9 R1 K16 ["Enabled"]
       43 JUMPIFNOT                        R9 ; [+2]
       44 LOADN                            R8 16
       45 JUMP                             ; [+1]
       46 LOADN                            R8 0
       47 GETIMPORT                        R9 K18 [pairs]
       49 MOVE                             R10 R6
       50 CALL                             R9 1 3
       51 FORGPREP_NEXT                    R9
       52 GETTABLEKS                       R16 R1 K19 ["Permissions"]
       54 GETUPVAL                         R18 1
       55 GETTABLEKS                       R17 R18 K20 ["RoleSubjectKey"]
       57 GETTABLE                         R15 R16 R17
       58 JUMPIF                           R15 ; [+4]
       59 GETUPVAL                         R15 1
       60 GETTABLEKS                       R14 R15 K21 ["NoneKey"]
       62 JUMP                             ; [+27]
       63 GETTABLEKS                       R17 R1 K19 ["Permissions"]
       65 GETUPVAL                         R19 1
       66 GETTABLEKS                       R18 R19 K20 ["RoleSubjectKey"]
       68 GETTABLE                         R16 R17 R18
       69 GETTABLEKS                       R17 R13 K22 ["Id"]
       71 GETTABLE                         R15 R16 R17
       72 JUMPIF                           R15 ; [+4]
       73 GETUPVAL                         R15 1
       74 GETTABLEKS                       R14 R15 K23 ["NoAccessKey"]
       76 JUMP                             ; [+13]
       77 GETTABLEKS                       R17 R1 K19 ["Permissions"]
       79 GETUPVAL                         R19 1
       80 GETTABLEKS                       R18 R19 K20 ["RoleSubjectKey"]
       82 GETTABLE                         R16 R17 R18
       83 GETTABLEKS                       R17 R13 K22 ["Id"]
       85 GETTABLE                         R15 R16 R17
       86 GETUPVAL                         R17 1
       87 GETTABLEKS                       R16 R17 K24 ["ActionKey"]
       89 GETTABLE                         R14 R15 R16
       90 JUMPIFNOTEQKN                    R12 K25 [1] ; [+2]
       92 MOVE                             R4 R14
       93 GETTABLEKS                       R15 R1 K16 ["Enabled"]
       95 GETTABLEKS                       R16 R13 K26 ["Name"]
       97 JUMPIFNOTEQKS                    R16 K27 ["Owner"] ; [+2]
       99 LOADB                            R15 0
      100 LOADNIL                          R16
      101 MOVE                             R17 R15
      102 JUMPIFNOT                        R17 ; [+43]
      103 GETTABLEKS                       R20 R1 K19 ["Permissions"]
      105 GETUPVAL                         R22 1
      106 GETTABLEKS                       R21 R22 K20 ["RoleSubjectKey"]
      108 GETTABLE                         R19 R20 R21
      109 JUMPIF                           R19 ; [+4]
      110 GETUPVAL                         R19 1
      111 GETTABLEKS                       R18 R19 K28 ["AssetPermissionLevel"]
      113 JUMP                             ; [+25]
      114 GETTABLEKS                       R20 R1 K19 ["Permissions"]
      116 GETUPVAL                         R22 1
      117 GETTABLEKS                       R21 R22 K20 ["RoleSubjectKey"]
      119 GETTABLE                         R19 R20 R21
      120 GETTABLEKS                       R21 R13 K22 ["Id"]
      122 GETTABLE                         R20 R19 R21
      123 JUMPIF                           R20 ; [+4]
      124 GETUPVAL                         R20 1
      125 GETTABLEKS                       R18 R20 K28 ["AssetPermissionLevel"]
      127 JUMP                             ; [+11]
      128 GETTABLEKS                       R21 R13 K22 ["Id"]
      130 GETTABLE                         R20 R19 R21
      131 GETUPVAL                         R22 1
      132 GETTABLEKS                       R21 R22 K29 ["PermissionLevelKey"]
      134 GETTABLE                         R18 R20 R21
      135 JUMPIF                           R18 ; [+3]
      136 GETUPVAL                         R21 1
      137 GETTABLEKS                       R18 R21 K28 ["AssetPermissionLevel"]
      139 GETUPVAL                         R20 1
      140 GETTABLEKS                       R19 R20 K28 ["AssetPermissionLevel"]
      142 JUMPIFEQ                         R18 R19 ; [+2]
      144 LOADB                            R17 0 +1
      145 LOADB                            R17 1
      146 MOVE                             R15 R17
      147 JUMPIF                           R15 ; [+14]
      148 GETTABLEKS                       R17 R1 K30 ["Localization"]
      150 LOADK                            R19 K31 ["AssetConfigPackagePermissions"]
      151 LOADK                            R20 K32 ["LockedGroup"]
      152 DUPTABLE                         R21 K34 [{"roleName"}]
      153 GETTABLEKS                       R22 R13 K26 ["Name"]
      155 SETTABLEKS                       R22 R21 K33 ["roleName"]
      157 NAMECALL                         R17 R17 K35 ["getText"]
      159 CALL                             R17 4 1
      160 MOVE                             R16 R17
      161 JUMP                             ; [+1]
      162 LOADNIL                          R16
      163 GETIMPORT                        R18 K18 [pairs]
      165 MOVE                             R19 R7
      166 CALL                             R18 1 3
      167 FORGPREP_NEXT                    R18
      168 GETTABLEKS                       R23 R22 K36 ["Key"]
      170 JUMPIFNOTEQ                      R23 R14 ; [+3]
      172 LOADB                            R17 0
      173 JUMP                             ; [+3]
      174 FORGLOOP                         R18 2 ; [-7]
      176 LOADB                            R17 1
      177 JUMPIFNOTEQ                      R4 R14 ; [+3]
      179 MOVE                             R18 R4
      180 JUMPIF                           R18 ; [+1]
      181 LOADB                            R18 0
      182 MOVE                             R4 R18
      183 JUMPIF                           R17 ; [+3]
      184 GETTABLEKS                       R19 R13 K37 ["LockedTo"]
      186 JUMPIFNOT                        R19 ; [+2]
      187 LOADB                            R18 1
      188 JUMP                             ; [+1]
      189 MOVE                             R18 R3
      190 MOVE                             R3 R18
      191 GETUPVAL                         R19 0
      192 GETTABLEKS                       R18 R19 K3 ["createElement"]
      194 LOADK                            R19 K38 ["Frame"]
      195 DUPTABLE                         R20 K41 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      196 LOADN                            R21 1
      197 SETTABLEKS                       R21 R20 K39 ["BackgroundTransparency"]
      199 SETTABLEKS                       R12 R20 K7 ["LayoutOrder"]
      201 GETIMPORT                        R21 K44 [UDim2.new]
      203 LOADN                            R22 1
      204 LOADN                            R23 0
      205 LOADN                            R24 0
      206 LOADN                            R25 60
      207 CALL                             R21 4 1
      208 SETTABLEKS                       R21 R20 K40 ["Size"]
      210 NEWTABLE                         R21 0 1
      212 GETUPVAL                         R23 0
      213 GETTABLEKS                       R22 R23 K3 ["createElement"]
      215 LOADK                            R23 K38 ["Frame"]
      216 DUPTABLE                         R24 K46 [{"BackgroundTransparency", "Position", "Size"}]
      217 LOADN                            R25 1
      218 SETTABLEKS                       R25 R24 K39 ["BackgroundTransparency"]
      220 GETIMPORT                        R25 K44 [UDim2.new]
      222 LOADN                            R26 0
      223 MOVE                             R27 R8
      224 LOADN                            R28 0
      225 LOADN                            R29 0
      226 CALL                             R25 4 1
      227 SETTABLEKS                       R25 R24 K45 ["Position"]
      229 GETIMPORT                        R25 K44 [UDim2.new]
      231 LOADN                            R26 1
      232 MINUS                            R27 R8
      233 LOADN                            R28 0
      234 LOADN                            R29 1
      235 CALL                             R25 4 1
      236 SETTABLEKS                       R25 R24 K40 ["Size"]
      238 NEWTABLE                         R25 0 1
      240 GETUPVAL                         R27 0
      241 GETTABLEKS                       R26 R27 K3 ["createElement"]
      243 GETUPVAL                         R27 2
      244 DUPTABLE                         R28 K57 [{"Enabled", "CollaboratorName", "CollaboratorId", "CollaboratorIcon", "Action", "Items", "SelectedItem", "HideLastSeparator", "Removable", "PermissionChanged", "TooltipText"}]
      245 SETTABLEKS                       R15 R28 K16 ["Enabled"]
      247 GETTABLEKS                       R29 R13 K26 ["Name"]
      249 SETTABLEKS                       R29 R28 K47 ["CollaboratorName"]
      251 GETTABLEKS                       R29 R13 K22 ["Id"]
      253 SETTABLEKS                       R29 R28 K48 ["CollaboratorId"]
      255 LOADNIL                          R29
      256 SETTABLEKS                       R29 R28 K49 ["CollaboratorIcon"]
      258 GETTABLEKS                       R29 R13 K37 ["LockedTo"]
      260 JUMPIF                           R29 ; [+4]
      261 GETTABLEKS                       R29 R0 K58 ["getLabelForAction"]
      263 MOVE                             R30 R14
      264 CALL                             R29 1 1
      265 SETTABLEKS                       R29 R28 K50 ["Action"]
      267 JUMPIF                           R17 ; [+3]
      268 GETTABLEKS                       R30 R13 K37 ["LockedTo"]
      270 JUMPIFNOT                        R30 ; [+3]
      271 NEWTABLE                         R29 0 0
      273 JUMPIF                           R29 ; [+1]
      274 MOVE                             R29 R7
      275 SETTABLEKS                       R29 R28 K51 ["Items"]
      277 SETTABLEKS                       R14 R28 K52 ["SelectedItem"]
      279 LENGTH                           R30 R6
      280 JUMPIFNOTEQ                      R12 R30 ; [+2]
      282 LOADB                            R29 0 +1
      283 LOADB                            R29 1
      284 SETTABLEKS                       R29 R28 K53 ["HideLastSeparator"]
      286 LOADB                            R29 0
      287 SETTABLEKS                       R29 R28 K54 ["Removable"]
      289 NEWCLOSURE                       R29 P1
      290 CAPTURE                          VAL R1
      291 CAPTURE                          VAL R13
      292 SETTABLEKS                       R29 R28 K55 ["PermissionChanged"]
      294 SETTABLEKS                       R16 R28 K56 ["TooltipText"]
      296 CALL                             R26 2 -1
      297 SETLIST                          R25 R26 -1 [1]
      299 CALL                             R22 3 -1
      300 SETLIST                          R21 R22 -1 [1]
      302 CALL                             R18 3 1
      303 LOADK                            R20 K59 ["Roleset"]
      304 MOVE                             R21 R12
      305 CONCAT                           R19 R20 R21
      306 SETTABLE                         R18 R2 R19
      307 FORGLOOP                         R9 2 ; [-256]
      309 GETTABLEKS                       R11 R0 K60 ["state"]
      311 GETTABLEKS                       R10 R11 K61 ["expanded"]
      313 JUMPIFNOT                        R10 ; [+2]
      314 GETUPVAL                         R9 3
      315 JUMPIF                           R9 ; [+1]
      316 GETUPVAL                         R9 4
      317 GETTABLEKS                       R14 R1 K30 ["Localization"]
      319 LOADK                            R16 K31 ["AssetConfigPackagePermissions"]
      320 LOADK                            R17 K62 ["GroupOwnedTooltip"]
      321 NAMECALL                         R14 R14 K35 ["getText"]
      323 CALL                             R14 3 1
      324 MOVE                             R11 R14
      325 LOADK                            R12 K63 [" "]
      326 JUMPIF                           R4 ; [+8]
      327 GETTABLEKS                       R13 R1 K30 ["Localization"]
      329 LOADK                            R15 K31 ["AssetConfigPackagePermissions"]
      330 LOADK                            R16 K64 ["MultipleLabelTooltip"]
      331 NAMECALL                         R13 R13 K35 ["getText"]
      333 CALL                             R13 3 1
      334 JUMP                             ; [+1]
      335 LOADK                            R13 K65 [""]
      336 CONCAT                           R10 R11 R13
      337 GETUPVAL                         R12 0
      338 GETTABLEKS                       R11 R12 K3 ["createElement"]
      340 GETUPVAL                         R12 5
      341 DUPTABLE                         R13 K71 [{"AutomaticSize", "Expanded", "LayoutOrder", "OnExpandedChanged", "HeaderComponent", "HeaderComponentProps"}]
      342 GETIMPORT                        R14 K73 [Enum.AutomaticSize.XY]
      344 SETTABLEKS                       R14 R13 K66 ["AutomaticSize"]
      346 GETTABLEKS                       R14 R1 K16 ["Enabled"]
      348 JUMPIFNOT                        R14 ; [+4]
      349 GETTABLEKS                       R15 R0 K60 ["state"]
      351 GETTABLEKS                       R14 R15 K61 ["expanded"]
      353 SETTABLEKS                       R14 R13 K67 ["Expanded"]
      355 SETTABLEKS                       R5 R13 K7 ["LayoutOrder"]
      357 GETTABLEKS                       R14 R0 K74 ["onClick"]
      359 SETTABLEKS                       R14 R13 K68 ["OnExpandedChanged"]
      361 GETTABLEKS                       R15 R1 K9 ["GroupData"]
      363 JUMPIFNOT                        R15 ; [+2]
      364 GETUPVAL                         R14 2
      365 JUMPIF                           R14 ; [+1]
      366 LOADNIL                          R14
      367 SETTABLEKS                       R14 R13 K69 ["HeaderComponent"]
      369 DUPTABLE                         R14 K80 [{"Enabled", "SubjectType", "CollaboratorName", "CollaboratorId", "CollaboratorIcon", "UseMask", "Action", "Items", "SecondaryText", "Removable", "Removed", "IsLoading", "TooltipText"}]
      370 LOADB                            R15 0
      371 SETTABLEKS                       R15 R14 K16 ["Enabled"]
      373 GETIMPORT                        R15 K83 [Enum.CreatorType.Group]
      375 SETTABLEKS                       R15 R14 K75 ["SubjectType"]
      377 GETTABLEKS                       R16 R1 K9 ["GroupData"]
      379 GETTABLEKS                       R15 R16 K26 ["Name"]
      381 SETTABLEKS                       R15 R14 K47 ["CollaboratorName"]
      383 GETTABLEKS                       R16 R1 K9 ["GroupData"]
      385 GETTABLEKS                       R15 R16 K22 ["Id"]
      387 SETTABLEKS                       R15 R14 K48 ["CollaboratorId"]
      389 GETUPVAL                         R16 6
      390 GETTABLEKS                       R15 R16 K84 ["constructRBXThumbUrl"]
      392 GETUPVAL                         R18 7
      393 GETTABLEKS                       R17 R18 K86 ["rbxThumbTypes"]
      395 GETTABLEKS                       R16 R17 K85 ["GroupIcon"]
      397 GETTABLEKS                       R18 R1 K9 ["GroupData"]
      399 GETTABLEKS                       R17 R18 K22 ["Id"]
      401 GETUPVAL                         R20 7
      402 GETTABLEKS                       R19 R20 K87 ["rbxThumbSizes"]
      404 GETTABLEKS                       R18 R19 K88 ["GroupIconImageSize"]
      406 CALL                             R15 3 1
      407 SETTABLEKS                       R15 R14 K49 ["CollaboratorIcon"]
      409 LOADB                            R15 0
      410 SETTABLEKS                       R15 R14 K76 ["UseMask"]
      412 JUMPIFNOT                        R4 ; [+5]
      413 GETTABLEKS                       R15 R0 K58 ["getLabelForAction"]
      415 MOVE                             R16 R4
      416 CALL                             R15 1 1
      417 JUMP                             ; [+7]
      418 GETTABLEKS                       R15 R1 K30 ["Localization"]
      420 LOADK                            R17 K31 ["AssetConfigPackagePermissions"]
      421 LOADK                            R18 K89 ["MultipleLabel"]
      422 NAMECALL                         R15 R15 K35 ["getText"]
      424 CALL                             R15 3 1
      425 SETTABLEKS                       R15 R14 K50 ["Action"]
      427 JUMPIFNOT                        R3 ; [+3]
      428 NEWTABLE                         R15 0 0
      430 JUMPIF                           R15 ; [+2]
      431 GETTABLEKS                       R15 R1 K51 ["Items"]
      433 SETTABLEKS                       R15 R14 K51 ["Items"]
      435 GETTABLEKS                       R15 R1 K77 ["SecondaryText"]
      437 SETTABLEKS                       R15 R14 K77 ["SecondaryText"]
      439 GETTABLEKS                       R16 R1 K54 ["Removable"]
      441 ORK                              R15 R16 K90 [False]
      442 SETTABLEKS                       R15 R14 K54 ["Removable"]
      444 GETTABLEKS                       R15 R1 K78 ["Removed"]
      446 SETTABLEKS                       R15 R14 K78 ["Removed"]
      448 LENGTH                           R16 R6
      449 JUMPIFEQKN                       R16 K91 [0] ; [+2]
      451 LOADB                            R15 0 +1
      452 LOADB                            R15 1
      453 SETTABLEKS                       R15 R14 K79 ["IsLoading"]
      455 SETTABLEKS                       R10 R14 K56 ["TooltipText"]
      457 SETTABLEKS                       R14 R13 K70 ["HeaderComponentProps"]
      459 MOVE                             R14 R2
      460 CALL                             R11 3 -1
      461 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R6 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R6 K10 ["Util"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K11 ["Urls"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R5 K12 ["Images"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R5 K13 ["AssetConfigConstants"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R4 K14 ["ContextServices"]
       51 GETTABLEKS                       R10 R9 K15 ["withContext"]
       53 GETTABLEKS                       R14 R0 K9 ["Src"]
       55 GETTABLEKS                       R13 R14 K16 ["Components"]
       57 GETTABLEKS                       R12 R13 K17 ["AssetConfiguration"]
       59 GETTABLEKS                       R11 R12 K18 ["Permissions"]
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R11 K19 ["DEPRECATED_CollaboratorItem"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R11 K20 ["PermissionsConstants"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R16 K5 [require]
       73 GETTABLEKS                       R17 R1 K8 ["Framework"]
       75 CALL                             R16 1 1
       76 GETTABLEKS                       R15 R16 K21 ["UI"]
       78 GETTABLEKS                       R14 R15 K22 ["ExpandablePane"]
       80 GETIMPORT                        R17 K5 [require]
       82 GETTABLEKS                       R18 R1 K8 ["Framework"]
       84 CALL                             R17 1 1
       85 GETTABLEKS                       R16 R17 K10 ["Util"]
       87 GETTABLEKS                       R15 R16 K23 ["Spritesheet"]
       89 MOVE                             R16 R15
       90 GETTABLEKS                       R17 R7 K24 ["ARROW_SPRITESHEET"]
       92 DUPTABLE                         R18 K27 [{"SpriteSize", "NumSprites"}]
       93 LOADN                            R19 12
       94 SETTABLEKS                       R19 R18 K25 ["SpriteSize"]
       96 LOADN                            R19 4
       97 SETTABLEKS                       R19 R18 K26 ["NumSprites"]
       99 CALL                             R16 2 1
      100 GETTABLEN                        R17 R16 2
      101 GETTABLEN                        R18 R16 3
      102 DUPCLOSURE                       R19 K28 [PROTO_0]
      103 CAPTURE                          VAL R13
      104 DUPCLOSURE                       R20 K29 [PROTO_1]
      105 CAPTURE                          VAL R13
      106 DUPCLOSURE                       R21 K30 [PROTO_2]
      107 GETTABLEKS                       R22 R2 K31 ["PureComponent"]
      109 LOADK                            R24 K32 ["GroupCollaboratorItem"]
      110 NAMECALL                         R22 R22 K33 ["extend"]
      112 CALL                             R22 2 1
      113 DUPCLOSURE                       R23 K34 [PROTO_6]
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R23 R22 K35 ["init"]
      119 DUPCLOSURE                       R23 K36 [PROTO_9]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R8
      128 SETTABLEKS                       R23 R22 K37 ["render"]
      130 MOVE                             R23 R10
      131 DUPTABLE                         R24 K39 [{"Localization"}]
      132 GETTABLEKS                       R25 R9 K38 ["Localization"]
      134 SETTABLEKS                       R25 R24 K38 ["Localization"]
      136 CALL                             R23 1 1
      137 MOVE                             R24 R22
      138 CALL                             R23 1 1
      139 MOVE                             R22 R23
      140 RETURN                           R22 1
