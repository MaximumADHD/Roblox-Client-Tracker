MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Deprecated"]
        9 GETTABLEKS                       R2 R2 K6 ["GetDeprecatedIconImageSetData"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K5 ["Deprecated"]
       16 GETTABLEKS                       R3 R3 K7 ["StaticFallbackImages"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["getResolutionScale"]
       23 CALL                             R3 1 1
       24 MOVE                             R4 R3
       25 CALL                             R4 0 1
       26 MOVE                             R5 R1
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R0 K2 ["Parent"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R6 K9 ["BuilderIcons"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R9 R7 K11 ["Migration"]
       38 GETTABLEKS                       R8 R9 K10 ["uiblox"]
       40 GETIMPORT                        R9 K4 [require]
       42 GETTABLEKS                       R10 R0 K12 ["whitelistedIconAssets"]
       44 CALL                             R9 1 1
       45 NEWTABLE                         R10 0 0
       47 MOVE                             R11 R5
       48 LOADNIL                          R12
       49 LOADNIL                          R13
       50 FORGPREP                         R11
       51 GETTABLE                         R16 R8 R14
       52 JUMPIFNOT                        R16 ; [+19]
       53 GETTABLE                         R16 R9 R14
       54 JUMPIFNOTEQKNIL                  R16 ; [+17]
       56 NEWTABLE                         R16 1 0
       58 MOVE                             R17 R15
       59 LOADNIL                          R18
       60 LOADNIL                          R19
       61 FORGPREP                         R17
       62 JUMPIFNOTEQKS                    R20 K13 ["ImageSet"] ; [+5]
       64 GETTABLE                         R22 R2 R21
       65 SETTABLEKS                       R22 R16 K14 ["Image"]
       67 JUMP                             ; [+1]
       68 SETTABLE                         R21 R16 R20
       69 FORGLOOP                         R17 2 ; [-8]
       71 SETTABLE                         R16 R10 R14
       72 FORGLOOP                         R11 2 ; [-22]
       74 RETURN                           R10 1
