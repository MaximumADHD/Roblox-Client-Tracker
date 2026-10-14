PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+12]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["not available for this component"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["PublishAssetVersionsAndWaitAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+4]
        5 GETUPVAL                         R4 1
        6 LOADK                            R5 K0 ["publish: gate is off (FFlagAmrEnableDraftStatus)"]
        7 CALL                             R4 1 0
        8 RETURN                           R3 1
        9 JUMPIFNOT                        R0 ; [+3]
       10 LENGTH                           R4 R1
       11 JUMPIFNOTEQKN                    R4 K1 [0] ; [+5]
       13 GETUPVAL                         R4 1
       14 LOADK                            R5 K2 ["publish: skipped, no AssetAccessController or no asset ids"]
       15 CALL                             R4 1 0
       16 RETURN                           R3 1
       17 NEWTABLE                         R4 0 0
       19 MOVE                             R5 R1
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETTABLE                         R10 R2 R8
       24 FASTCALL1                        TYPE R10 ; [+3]
       25 MOVE                             R12 R10
       26 GETIMPORT                        R11 K4 [type]
       28 CALL                             R11 1 1
       29 JUMPIFNOTEQKS                    R11 K5 ["number"] ; [+13]
       31 DUPTABLE                         R13 K8 [{"AssetId", "VersionNumber"}]
       32 SETTABLEKS                       R9 R13 K6 ["AssetId"]
       34 SETTABLEKS                       R10 R13 K7 ["VersionNumber"]
       36 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       38 MOVE                             R12 R4
       39 GETIMPORT                        R11 K11 [table.insert]
       41 CALL                             R11 2 0
       42 JUMP                             ; [+2]
       43 LOADB                            R11 1
       44 SETTABLE                         R11 R3 R9
       45 FORGLOOP                         R5 2 ; [-23]
       47 LENGTH                           R5 R4
       48 JUMPIFNOTEQKN                    R5 K1 [0] ; [+5]
       50 GETUPVAL                         R5 1
       51 LOADK                            R6 K12 ["publish: nothing to publish, no asset carried a version number"]
       52 CALL                             R5 1 0
       53 RETURN                           R3 1
       54 GETUPVAL                         R5 1
       55 LOADK                            R6 K13 ["publish: publishing %* asset version(s)"]
       56 LENGTH                           R8 R4
       57 NAMECALL                         R6 R6 K14 ["format"]
       59 CALL                             R6 2 1
       60 CALL                             R5 1 0
       61 GETIMPORT                        R5 K16 [pcall]
       63 NEWCLOSURE                       R6 P0
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R4
       66 CALL                             R5 1 2
       67 JUMPIFNOT                        R5 ; [+7]
       68 FASTCALL1                        TYPE R6 ; [+3]
       69 MOVE                             R8 R6
       70 GETIMPORT                        R7 K4 [type]
       72 CALL                             R7 1 1
       73 JUMPIFEQKS                       R7 K9 ["table"] ; [+45]
       75 LOADB                            R7 0
       76 FASTCALL1                        TYPE R6 ; [+3]
       77 MOVE                             R9 R6
       78 GETIMPORT                        R8 K4 [type]
       80 CALL                             R8 1 1
       81 JUMPIFNOTEQKS                    R8 K17 ["string"] ; [+12]
       83 GETIMPORT                        R8 K19 [string.find]
       85 MOVE                             R9 R6
       86 LOADK                            R10 K20 ["not available for this component"]
       87 LOADN                            R11 1
       88 LOADB                            R12 1
       89 CALL                             R8 4 1
       90 JUMPIFNOTEQKNIL                  R8 ; [+2]
       92 LOADB                            R7 0 +1
       93 LOADB                            R7 1
       94 JUMPIFNOT                        R7 ; [+5]
       95 GETUPVAL                         R7 1
       96 LOADK                            R8 K21 ["publish: skipped, PublishAssetVersionsAndWaitAsync is not registered on this Studio"]
       97 LOADK                            R9 K22 ["WARN"]
       98 CALL                             R7 2 0
       99 JUMP                             ; [+8]
      100 GETIMPORT                        R7 K24 [warn]
      102 LOADK                            R8 K25 ["Failed to publish draft assets: %*"]
      103 MOVE                             R10 R6
      104 NAMECALL                         R8 R8 K14 ["format"]
      106 CALL                             R8 2 1
      107 CALL                             R7 1 0
      108 MOVE                             R7 R4
      109 LOADNIL                          R8
      110 LOADNIL                          R9
      111 FORGPREP                         R7
      112 GETTABLEKS                       R12 R11 K6 ["AssetId"]
      114 LOADB                            R13 1
      115 SETTABLE                         R13 R3 R12
      116 FORGLOOP                         R7 2 ; [-5]
      118 RETURN                           R3 1
      119 MOVE                             R7 R6
      120 LOADNIL                          R8
      121 LOADNIL                          R9
      122 FORGPREP                         R7
      123 FASTCALL1                        TYPE R11 ; [+3]
      124 MOVE                             R13 R11
      125 GETIMPORT                        R12 K4 [type]
      127 CALL                             R12 1 1
      128 JUMPIFNOTEQKS                    R12 K5 ["number"] ; [+3]
      130 LOADB                            R12 1
      131 SETTABLE                         R12 R3 R11
      132 FORGLOOP                         R7 2 ; [-10]
      134 LOADN                            R7 0
      135 MOVE                             R8 R3
      136 LOADNIL                          R9
      137 LOADNIL                          R10
      138 FORGPREP                         R8
      139 ADDK                             R7 R7 K26 [1]
      140 FORGLOOP                         R8 1 ; [-2]
      142 JUMPIFNOTEQKN                    R7 K1 [0] ; [+5]
      144 GETUPVAL                         R8 1
      145 LOADK                            R9 K27 ["publish: every asset version was published"]
      146 CALL                             R8 1 0
      147 RETURN                           R3 1
      148 GETIMPORT                        R8 K24 [warn]
      150 LOADK                            R9 K28 ["%* asset(s) could not be published"]
      151 MOVE                             R11 R7
      152 NAMECALL                         R9 R9 K14 ["format"]
      154 CALL                             R9 2 1
      155 CALL                             R8 1 0
      156 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["logIfDebug"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagAmrEnableDraftStatus"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 DUPCLOSURE                       R4 K12 [PROTO_2]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
