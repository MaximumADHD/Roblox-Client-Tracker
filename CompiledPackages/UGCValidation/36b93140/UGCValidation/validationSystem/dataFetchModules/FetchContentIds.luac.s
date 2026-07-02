PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["rootInstance"]
        2 NEWTABLE                         R2 0 0
        4 NAMECALL                         R3 R1 K1 ["GetDescendants"]
        6 CALL                             R3 1 1
        7 FASTCALL2                        TABLE_INSERT R3 R1 ; [+5]
        9 MOVE                             R5 R3
       10 MOVE                             R6 R1
       11 GETIMPORT                        R4 K4 [table.insert]
       13 CALL                             R4 2 0
       14 MOVE                             R4 R3
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K5 ["CONTENT_ID_FIELDS"]
       21 GETTABLEKS                       R11 R8 K6 ["ClassName"]
       23 GETTABLE                         R9 R10 R11
       24 JUMPIFNOT                        R9 ; [+81]
       25 MOVE                             R10 R9
       26 LOADNIL                          R11
       27 LOADNIL                          R12
       28 FORGPREP                         R10
       29 GETTABLE                         R15 R8 R14
       30 JUMPIFEQKS                       R15 K7 [""] ; [+25]
       32 GETUPVAL                         R16 1
       33 GETTABLEKS                       R16 R16 K8 ["tryGetAssetIdFromContentId"]
       35 MOVE                             R17 R15
       36 CALL                             R16 1 1
       37 JUMPIFEQKNIL                     R16 ; [+18]
       39 GETTABLE                         R17 R2 R16
       40 JUMPIFNOTEQKNIL                  R17 ; [+4]
       42 NEWTABLE                         R17 0 0
       44 SETTABLE                         R17 R2 R16
       45 GETTABLE                         R18 R2 R16
       46 DUPTABLE                         R19 K11 [{"fieldName", "instance"}]
       47 SETTABLEKS                       R14 R19 K9 ["fieldName"]
       49 SETTABLEKS                       R8 R19 K10 ["instance"]
       51 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
       53 GETIMPORT                        R17 K4 [table.insert]
       55 CALL                             R17 2 0
       56 FORGLOOP                         R10 2 ; [-28]
       58 GETUPVAL                         R10 2
       59 CALL                             R10 0 1
       60 JUMPIFNOT                        R10 ; [+45]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K12 ["CONTENT_FIELDS_WITHOUT_CONTENTID"]
       64 GETTABLEKS                       R12 R8 K6 ["ClassName"]
       66 GETTABLE                         R10 R11 R12
       67 JUMPIFNOT                        R10 ; [+38]
       68 MOVE                             R11 R10
       69 LOADNIL                          R12
       70 LOADNIL                          R13
       71 FORGPREP                         R11
       72 GETTABLE                         R16 R8 R15
       73 GETTABLEKS                       R17 R16 K13 ["SourceType"]
       75 GETIMPORT                        R18 K17 [Enum.ContentSourceType.Uri]
       77 JUMPIFNOTEQ                      R17 R18 ; [+26]
       79 GETUPVAL                         R17 1
       80 GETTABLEKS                       R17 R17 K8 ["tryGetAssetIdFromContentId"]
       82 GETTABLEKS                       R18 R16 K16 ["Uri"]
       84 CALL                             R17 1 1
       85 JUMPIFEQKNIL                     R17 ; [+18]
       87 GETTABLE                         R18 R2 R17
       88 JUMPIFNOTEQKNIL                  R18 ; [+4]
       90 NEWTABLE                         R18 0 0
       92 SETTABLE                         R18 R2 R17
       93 GETTABLE                         R19 R2 R17
       94 DUPTABLE                         R20 K11 [{"fieldName", "instance"}]
       95 SETTABLEKS                       R15 R20 K9 ["fieldName"]
       97 SETTABLEKS                       R8 R20 K10 ["instance"]
       99 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      101 GETIMPORT                        R18 K4 [table.insert]
      103 CALL                             R18 2 0
      104 FORGLOOP                         R11 2 ; [-33]
      106 FORGLOOP                         R4 2 ; [-89]
      108 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["ParseContentIds"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K6 ["util"]
       25 GETTABLEKS                       R4 R4 K8 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K9 ["flags"]
       32 GETTABLEKS                       R5 R5 K10 ["getFFlagUGCValidateAllowEmissives"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 1 0
       37 DUPCLOSURE                       R6 K11 [PROTO_0]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R6 R5 K12 ["getData"]
       43 RETURN                           R5 1
