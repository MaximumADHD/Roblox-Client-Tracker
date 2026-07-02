PROTO_0:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["RestrictedForAll"] ; [+5]
        3 JUMPIFEQKS                       R0 K1 ["RestrictedToOwner"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["placeSafetyStatus"]
        5 MOVE                             R3 R2
        6 JUMPIFNOT                        R3 ; [+2]
        7 GETTABLEKS                       R3 R2 K1 ["userPlayabilityRestrictions"]
        9 GETUPVAL                         R4 1
       10 NEWTABLE                         R6 0 1
       12 DUPTABLE                         R7 K5 [{"Id", "IsSequestered", "IsDiscoveryBlocked"}]
       13 GETUPVAL                         R8 2
       14 SETTABLEKS                       R8 R7 K2 ["Id"]
       16 LOADB                            R8 1
       17 JUMPIFEQKS                       R3 K6 ["RestrictedForAll"] ; [+5]
       19 JUMPIFEQKS                       R3 K7 ["RestrictedToOwner"] ; [+2]
       21 LOADB                            R8 0 +1
       22 LOADB                            R8 1
       23 SETTABLEKS                       R8 R7 K3 ["IsSequestered"]
       25 LOADB                            R8 0
       26 JUMPIFEQKNIL                     R2 ; [+7]
       28 GETTABLEKS                       R9 R2 K8 ["discoveryBlocked"]
       30 JUMPIFEQKB                       R9 TRUE ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 SETTABLEKS                       R8 R7 K4 ["IsDiscoveryBlocked"]
       36 SETLIST                          R6 R7 1 [1]
       38 NAMECALL                         R4 R4 K9 ["upsertItems"]
       40 CALL                             R4 2 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverSequestration experienced an error for universe %*: %*"]
        3 GETUPVAL                         R5 0
        4 MOVE                             R6 R0
        5 NAMECALL                         R3 R3 K3 ["format"]
        7 CALL                             R3 3 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["new"]
        7 CALL                             R1 0 1
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 1
       13 MOVE                             R9 R6
       14 NAMECALL                         R7 R7 K2 ["getItem"]
       16 CALL                             R7 2 1
       17 MOVE                             R8 R7
       18 JUMPIFNOT                        R8 ; [+2]
       19 GETTABLEKS                       R8 R7 K3 ["RootPlaceId"]
       21 JUMPIFNOT                        R8 ; [+36]
       22 GETTABLEKS                       R9 R1 K4 ["composeUrl"]
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R10 R10 K5 ["PLACE_SAFETY_STATUS_URL"]
       27 GETTABLEKS                       R10 R10 K6 ["Prefix"]
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R11 R11 K5 ["PLACE_SAFETY_STATUS_URL"]
       32 GETTABLEKS                       R11 R11 K7 ["Url"]
       34 MOVE                             R12 R8
       35 CALL                             R11 1 -1
       36 CALL                             R9 -1 1
       37 GETUPVAL                         R10 3
       38 GETUPVAL                         R12 3
       39 MOVE                             R14 R9
       40 NAMECALL                         R12 R12 K8 ["get"]
       42 CALL                             R12 2 -1
       43 NAMECALL                         R10 R10 K9 ["parseJson"]
       45 CALL                             R10 -1 1
       46 NEWCLOSURE                       R12 P0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R6
       50 NAMECALL                         R10 R10 K10 ["andThen"]
       52 CALL                             R10 2 1
       53 NEWCLOSURE                       R12 P1
       54 CAPTURE                          VAL R6
       55 NAMECALL                         R10 R10 K11 ["catch"]
       57 CALL                             R10 2 0
       58 FORGLOOP                         R2 2 ; [-47]
       60 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Models"]
       30 GETTABLEKS                       R4 R4 K12 ["PlaceSafetyStatusResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Network"]
       39 GETTABLEKS                       R5 R5 K14 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K15 ["Util"]
       48 GETTABLEKS                       R6 R6 K16 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K17 ["Networking"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K15 ["Util"]
       59 GETTABLEKS                       R7 R7 K18 ["createResponseValidator"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R2 K19 ["RobloxAPI"]
       64 GETTABLEKS                       R7 R7 K20 ["Url"]
       66 GETTABLEKS                       R8 R5 K21 ["new"]
       68 DUPTABLE                         R9 K27 [{["isInternal"] = True, ["loggingLevel"], ["retryAmount"] = 3}]
       69 SETTABLEKS                       R1 R9 K24 ["loggingLevel"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R0 K6 ["Src"]
       76 GETTABLEKS                       R10 R10 K13 ["Network"]
       78 GETTABLEKS                       R10 R10 K28 ["GameCache"]
       80 CALL                             R9 1 1
       81 MOVE                             R10 R6
       82 GETTABLEKS                       R11 R3 K29 ["validate"]
       84 CALL                             R10 1 1
       85 DUPCLOSURE                       R11 K30 [PROTO_0]
       86 DUPCLOSURE                       R12 K31 [PROTO_3]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R10
       92 RETURN                           R12 1
