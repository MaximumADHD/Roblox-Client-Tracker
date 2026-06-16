PROTO_0:
        0 NEWTABLE                         R0 8 0
        2 LOADNIL                          R1
        3 SETTABLEKS                       R1 R0 K0 ["_mockData"]
        5 LOADK                            R1 K1 ["{}"]
        6 SETTABLEKS                       R1 R0 K2 ["InstalledPluginData"]
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIF                           R1 ; [+6]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["new"]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K4 ["OnPluginInstalledFromWeb"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["new"]
       20 CALL                             R1 0 1
       21 SETTABLEKS                       R1 R0 K5 ["OnPluginInstalledFromToolbox"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["_userId"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K3 ["new"]
       29 CALL                             R1 0 1
       30 SETTABLEKS                       R1 R0 K7 ["_installedPluginDataChanged"]
       32 GETUPVAL                         R3 2
       33 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       35 MOVE                             R2 R0
       36 GETIMPORT                        R1 K9 [setmetatable]
       38 CALL                             R1 2 1
       39 RETURN                           R1 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["_mockData"]
        2 GETTABLEKS                       R2 R0 K0 ["_mockData"]
        4 JUMPIF                           R2 ; [+4]
        5 LOADK                            R2 K1 ["{}"]
        6 SETTABLEKS                       R2 R0 K2 ["InstalledPluginData"]
        8 JUMP                             ; [+51]
        9 GETIMPORT                        R2 K4 [pairs]
       11 GETTABLEKS                       R3 R0 K0 ["_mockData"]
       13 CALL                             R2 1 3
       14 FORGPREP_NEXT                    R2
       15 FASTCALL1                        TYPE R5 ; [+3]
       16 MOVE                             R10 R5
       17 GETIMPORT                        R9 K6 [type]
       19 CALL                             R9 1 1
       20 JUMPIFEQKS                       R9 K7 ["string"] ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 FASTCALL2K                       ASSERT R8 K8 ; [+4]
       26 LOADK                            R9 K8 ["Plugin ID keys need to be strings"]
       27 GETIMPORT                        R7 K10 [assert]
       29 CALL                             R7 2 0
       30 FASTCALL1                        TYPE R6 ; [+3]
       31 MOVE                             R10 R6
       32 GETIMPORT                        R9 K6 [type]
       34 CALL                             R9 1 1
       35 JUMPIFEQKS                       R9 K11 ["table"] ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 FASTCALL2K                       ASSERT R8 K12 ; [+4]
       41 LOADK                            R9 K12 ["Need a table for each plugin"]
       42 GETIMPORT                        R7 K10 [assert]
       44 CALL                             R7 2 0
       45 FORGLOOP                         R2 2 ; [-31]
       47 GETIMPORT                        R2 K14 [game]
       49 LOADK                            R4 K15 ["HttpService"]
       50 NAMECALL                         R2 R2 K16 ["GetService"]
       52 CALL                             R2 2 1
       53 GETTABLEKS                       R4 R0 K0 ["_mockData"]
       55 NAMECALL                         R2 R2 K17 ["JSONEncode"]
       57 CALL                             R2 2 1
       58 SETTABLEKS                       R2 R0 K2 ["InstalledPluginData"]
       60 GETTABLEKS                       R2 R0 K18 ["_installedPluginDataChanged"]
       62 NAMECALL                         R2 R2 K19 ["Fire"]
       64 CALL                             R2 1 0
       65 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 ["InstalledPluginData"] ; [+4]
        2 GETTABLEKS                       R2 R0 K1 ["_installedPluginDataChanged"]
        4 RETURN                           R2 1
        5 LOADNIL                          R2
        6 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["MockStudioService:GetUserId is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_userId"]
       11 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K2 ["_mockData"]
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETTABLEKS                       R5 R0 K2 ["_mockData"]
       10 GETTABLE                         R4 R5 R3
       11 JUMPIF                           R4 ; [+2]
       12 LOADB                            R4 0
       13 RETURN                           R4 1
       14 GETTABLEKS                       R6 R0 K2 ["_mockData"]
       16 GETTABLE                         R5 R6 R3
       17 GETTABLEKS                       R5 R5 K3 ["AssetVersion"]
       19 JUMPIFEQ                         R5 R2 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 RETURN                           R4 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K8 ["Packages"]
       24 GETTABLEKS                       R3 R3 K9 ["Signal"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 16 0
       29 SETTABLEKS                       R3 R3 K10 ["__index"]
       31 DUPCLOSURE                       R4 K11 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R4 R3 K12 ["new"]
       37 DUPCLOSURE                       R4 K13 [PROTO_1]
       38 SETTABLEKS                       R4 R3 K14 ["setMockData"]
       40 DUPCLOSURE                       R4 K15 [PROTO_2]
       41 SETTABLEKS                       R4 R3 K16 ["GetPropertyChangedSignal"]
       43 DUPCLOSURE                       R4 K17 [PROTO_3]
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R4 R3 K18 ["GetUserId"]
       47 DUPCLOSURE                       R4 K19 [PROTO_4]
       48 SETTABLEKS                       R4 R3 K20 ["TryInstallPlugin"]
       50 DUPCLOSURE                       R4 K21 [PROTO_5]
       51 SETTABLEKS                       R4 R3 K22 ["UninstallPlugin"]
       53 DUPCLOSURE                       R4 K23 [PROTO_6]
       54 SETTABLEKS                       R4 R3 K24 ["IsPluginUpToDate"]
       56 DUPCLOSURE                       R4 K25 [PROTO_7]
       57 SETTABLEKS                       R4 R3 K26 ["SetPluginEnabled"]
       59 DUPCLOSURE                       R4 K27 [PROTO_8]
       60 SETTABLEKS                       R4 R3 K28 ["OpenInBrowser_DONOTUSE"]
       62 RETURN                           R3 1
