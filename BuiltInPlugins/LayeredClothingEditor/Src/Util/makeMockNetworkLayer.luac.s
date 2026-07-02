PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETIMPORT                        R1 K2 [string.find]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K4 [tostring]
        8 CALL                             R2 1 1
        9 LOADK                            R3 K5 ["?"]
       10 CALL                             R1 2 1
       11 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETIMPORT                        R1 K2 [string.find]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K4 [tostring]
        8 CALL                             R2 1 1
        9 LOADK                            R3 K5 ["?"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+9]
       12 LOADN                            R3 1
       13 JUMPIFNOTLT                      R3 R1 ; [+7]
       15 LOADN                            R4 1
       16 SUBK                             R5 R1 K6 [1]
       17 NAMECALL                         R2 R0 K7 ["sub"]
       19 CALL                             R2 3 1
       20 JUMPIF                           R2 ; [+1]
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETIMPORT                        R1 K2 [string.find]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K4 [tostring]
        8 CALL                             R2 1 1
        9 LOADK                            R3 K5 ["?"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+12]
       12 FASTCALL1                        STRING_LEN R0 ; [+3]
       13 MOVE                             R4 R0
       14 GETIMPORT                        R3 K7 [string.len]
       16 CALL                             R3 1 1
       17 JUMPIFNOTLT                      R1 R3 ; [+6]
       19 ADDK                             R4 R1 K8 [1]
       20 NAMECALL                         R2 R0 K9 ["sub"]
       22 CALL                             R2 2 1
       23 JUMPIF                           R2 ; [+1]
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gsub]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["^assetIds="]
        6 LOADK                            R5 K4 [""]
        7 CALL                             R2 3 1
        8 MOVE                             R0 R2
        9 MOVE                             R3 R0
       10 LOADK                            R4 K5 [","]
       11 CONCAT                           R2 R3 R4
       12 LOADK                            R4 K6 ["(.-),"]
       13 NAMECALL                         R2 R2 K7 ["gmatch"]
       15 CALL                             R2 2 3
       16 FORGPREP                         R2
       17 FASTCALL1                        TONUMBER R5 ; [+3]
       18 MOVE                             R8 R5
       19 GETIMPORT                        R7 K9 [tonumber]
       21 CALL                             R7 1 1
       22 JUMPIFNOT                        R7 ; [+7]
       23 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       25 MOVE                             R9 R1
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K12 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R2 1 ; [-14]
       32 RETURN                           R1 1

PROTO_4:
        0 DUPCLOSURE                       R1 K0 [PROTO_3]
        1 MOVE                             R2 R1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 DUPTABLE                         R3 K2 [{"data"}]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["data"]
        9 GETIMPORT                        R4 K4 [ipairs]
       11 MOVE                             R5 R2
       12 CALL                             R4 1 3
       13 FORGPREP_INEXT                   R4
       14 GETTABLEKS                       R9 R3 K1 ["data"]
       16 DUPTABLE                         R10 K20 [{["canHaveThumbnail"] = False, ["isArchivable"] = False, ["id"], ["isPublicDomainEnabled"] = False, ["typeId"] = 19, ["isModerated"] = False, ["isVersioningEnabled"] = False, ["name"] = "Merely's ROBLOX Tablet", ["description"] = "Winner: Merely. ROBLOX will be in touch to redeem this prize.", ["enableComments"] = False, ["isCopyingAllowed"] = False}]
       17 SETTABLEKS                       R8 R10 K8 ["id"]
       19 SETTABLE                         R10 R9 R7
       20 FORGLOOP                         R4 2 [inext] ; [-7]
       22 GETUPVAL                         R4 0
       23 MOVE                             R6 R3
       24 NAMECALL                         R4 R4 K21 ["JSONEncode"]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"data"}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K0 ["data"]
        6 NAMECALL                         R0 R0 K2 ["JSONEncode"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 NEWTABLE                         R1 1 0
        2 DUPCLOSURE                       R2 K0 [PROTO_4]
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K1 ["https://develop.roblox.com/v1/assets"]
        6 GETTABLEKS                       R3 R0 K2 ["Url"]
        8 MOVE                             R4 R3
        9 JUMPIFNOT                        R4 ; [+9]
       10 GETIMPORT                        R4 K5 [string.find]
       12 FASTCALL1                        TOSTRING R3 ; [+3]
       13 MOVE                             R6 R3
       14 GETIMPORT                        R5 K7 [tostring]
       16 CALL                             R5 1 1
       17 LOADK                            R6 K8 ["?"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 LOADN                            R5 1
       21 JUMPIFNOTLT                      R5 R4 ; [+8]
       23 LOADN                            R7 1
       24 SUBK                             R8 R4 K9 [1]
       25 NAMECALL                         R5 R3 K10 ["sub"]
       27 CALL                             R5 3 1
       28 MOVE                             R2 R5
       29 JUMPIF                           R2 ; [+1]
       30 LOADNIL                          R2
       31 GETTABLEKS                       R4 R0 K2 ["Url"]
       33 MOVE                             R5 R4
       34 JUMPIFNOT                        R5 ; [+9]
       35 GETIMPORT                        R5 K5 [string.find]
       37 FASTCALL1                        TOSTRING R4 ; [+3]
       38 MOVE                             R7 R4
       39 GETIMPORT                        R6 K7 [tostring]
       41 CALL                             R6 1 1
       42 LOADK                            R7 K8 ["?"]
       43 CALL                             R5 2 1
       44 JUMPIFNOT                        R5 ; [+13]
       45 FASTCALL1                        STRING_LEN R4 ; [+3]
       46 MOVE                             R7 R4
       47 GETIMPORT                        R6 K12 [string.len]
       49 CALL                             R6 1 1
       50 JUMPIFNOTLT                      R5 R6 ; [+7]
       52 ADDK                             R8 R5 K9 [1]
       53 NAMECALL                         R6 R4 K10 ["sub"]
       55 CALL                             R6 2 1
       56 MOVE                             R3 R6
       57 JUMPIF                           R3 ; [+1]
       58 LOADNIL                          R3
       59 GETTABLE                         R4 R1 R2
       60 JUMPIF                           R4 ; [+2]
       61 DUPCLOSURE                       R4 K13 [PROTO_5]
       62 CAPTURE                          UPVAL U0
       63 DUPTABLE                         R5 K21 [{["Body"], ["Success"] = True, ["StatusMessage"] = "OK", ["StatusCode"] = 200}]
       64 MOVE                             R6 R4
       65 MOVE                             R7 R3
       66 CALL                             R6 1 1
       67 SETTABLEKS                       R6 R5 K14 ["Body"]
       69 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_1]
        9 DUPCLOSURE                       R3 K6 [PROTO_2]
       10 DUPCLOSURE                       R4 K7 [PROTO_6]
       11 CAPTURE                          VAL R0
       12 RETURN                           R4 1
